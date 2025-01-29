
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:shoppe_screen/core/util/ScreenUtil.dart';
import 'package:shoppe_screen/features/Product/presintation/Widget/ProductCard.dart';
import '../../../../injection_container.dart';

import '../manager/Product_bloc.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>  {
  List filterList = [
    {
      "name": "الدول  المناصرة للقضية",
      "id": 4,
    },
    {
      "name": "الدول  الداعمة للقضية",
      "id": 3,
    },
    {
      "name": "الدول الداعمة للاحتلال",
      "id": 2,
    },
    {
      "name": "الدول المحايدة",
      "id": 1,
    },
  ];

  GlobalKey<ScaffoldState> scaffolKey = GlobalKey<ScaffoldState>();

  int itemisselected = 0;
  String valueInput = "";
  Widget ProductWidget = Container();
  ScreenUtil screenUtil = ScreenUtil();
  Widget build(BuildContext context) {
    screenUtil.init(context);
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<Product_bloc>(),
        child: BlocConsumer<Product_bloc, ProductState>(
          listener: (context, state) {
            if (state is ProductError) {
              print(state.errorMessage);
            }
          },
          builder: (context, state) {
            if (state is ProductInitial) {
              BlocProvider.of<Product_bloc>(context)
                  .add(GetAllProduct());
            }

            if (state is ProductLoading) {
              ProductWidget = Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenUtil.screenHeight * .1,
                  ),
                  Center(
                      child: Lottie.asset('assets/json/loading.json'),
                  ),

                ],
              );
            }

            if (state is ProductILoaded) {


              // state.productModel=[];

              return
                state.productModel.length ==  0? Center(child: SvgPicture.asset(
                 "assets/images/notFound.svg",
              ),):
                GridView.builder(
                padding: EdgeInsets.all(8),
                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 2,
                //   crossAxisSpacing: 12,
                //   mainAxisSpacing: 12,
                //   childAspectRatio: 0.75, // التحكم بنسبة العرض إلى الطول
                // ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // عدد الأعمدة
                  crossAxisSpacing: 8, // تقليل المسافات الأفقية
                  mainAxisSpacing: 8, // تقليل المسافات الرأسية
                  childAspectRatio: 0.9, // ضبط نسبة العرض إلى الطول لتصغير البطاقة
                ),
                itemCount: state.productModel.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    productModel: state.productModel[index],
                  );
                },
              );

              // return GridView.builder(
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              //    itemCount: state.productModel.length,
              //   itemBuilder: (context, index) {
              //
              //
              //   return Productcard(name: state.productModel[index].name, reviews: state.productModel[index].reviews.toString(),price: state.productModel[index].price.toString(),image: state.productModel[index].image,);
              // },);
            }

            return ProductWidget;
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  void dispose() {
    super.dispose();
  }

}
