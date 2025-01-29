//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shoppe_screen/core/AppTheme.dart';
// import 'package:shoppe_screen/core/util/ScreenUtil.dart';
// import '../../../../injection_container.dart';
//
// import '../../data/model/ProductDetailsModel.dart';
// import '../manager/ProductDetails_bloc.dart';
//
// class ProductDetailsPage extends StatefulWidget {
//   final String id;
//   const ProductDetailsPage({super.key, required this.id,});
//
//   @override
//   State<ProductDetailsPage> createState() => _ProductDetailsPageState();
// }
//
// class _ProductDetailsPageState extends State<ProductDetailsPage>  {
//   // ScrollController _scrollController = ScrollController();
//   // List filterList = [
//   //   {
//   //     "name": "الدول  المناصرة للقضية",
//   //     "id": 4,
//   //   },
//   //   {
//   //     "name": "الدول  الداعمة للقضية",
//   //     "id": 3,
//   //   },
//   //   {
//   //     "name": "الدول الداعمة للاحتلال",
//   //     "id": 2,
//   //   },
//   //   {
//   //     "name": "الدول المحايدة",
//   //     "id": 1,
//   //   },
//   // ];
//
//   GlobalKey<ScaffoldState> scaffolKey = GlobalKey<ScaffoldState>();
//
//   int itemisselected = 0;
//   String valueInput = "";
//   Widget ProductDetailsWidget = Container();
//   ScreenUtil screenUtil = ScreenUtil();
//   Widget build(BuildContext context) {
//     screenUtil.init(context);
//     return Scaffold(
//       body: BlocProvider(
//         create: (context) => sl<ProductDetails_bloc>(),
//         child: BlocConsumer<ProductDetails_bloc, ProductDetailsState>(
//           listener: (context, state) {
//             if (state is ProductDetailsError) {
//               print(state.errorMessage);
//             }
//           },
//           builder: (context, state) {
//             if (state is ProductDetailsInitial) {
//               BlocProvider.of<ProductDetails_bloc>(context)
//                   .add(GetProductDetails(id: widget.id));
//             }
//
//             if (state is ProductDetailsLoading) {
//               ProductDetailsWidget = Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: screenUtil.screenHeight * .1,
//                   ),
//                   Center(
//                       child: Text("جاري التحميل .......",style: TextStyle(fontFamily: AppTheme.fontFamily, fontSize: 20),))
//
//
//                 ],
//               );
//             }
//
//             if (state is ProductDetailsILoaded) {
//               //TODO::Show ProductDetails here
//
//
//
//               return Column(
//
//                 children: [
//                   SizedBox(
//                     height: screenUtil.screenHeight * .5,
//                   child: Image.network(state.productDetailsModel.image,fit: BoxFit.cover,)),
//                   Text(state.productDetailsModel.name),
//                   Text(state.productDetailsModel.description),
//
//                 ],
//               );
//
//               // return GridView.builder(
//               //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//               //    itemCount: state.ProductDetailsModel.length,
//               //   itemBuilder: (context, index) {
//               //
//               //
//               //   return ProductDetailscard(name: state.ProductDetailsModel[index].name, reviews: state.ProductDetailsModel[index].reviews.toString(),price: state.ProductDetailsModel[index].price.toString(),image: state.ProductDetailsModel[index].image,);
//               // },);
//             }
//
//             return ProductDetailsWidget;
//           },
//         ),
//       ),
//     );
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//   }
//
//   void dispose() {
//     super.dispose();
//   }
//
// }

/////////////////////secondey code
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:shoppe_screen/core/util/ScreenUtil.dart';
// import '../../../../core/AppTheme.dart';
// import '../../../../injection_container.dart';
// import '../manager/ProductDetails_bloc.dart';
//
// class ProductDetailsPage extends StatefulWidget {
//   final String id;
//   const ProductDetailsPage({super.key, required this.id});
//
//   @override
//   State<ProductDetailsPage> createState() => _ProductDetailsPageState();
// }
//
// class _ProductDetailsPageState extends State<ProductDetailsPage> {
//   int itemisselected = 0;
//   String valueInput = "";
//   Widget ProductDetailsWidget = Container();
//   ScreenUtil screenUtil = ScreenUtil();
//
//   @override
//   Widget build(BuildContext context) {
//     screenUtil.init(context);
//     return Scaffold(
//       body: BlocProvider(
//         create: (context) => sl<ProductDetails_bloc>(),
//         child: BlocConsumer<ProductDetails_bloc, ProductDetailsState>(
//           listener: (context, state) {
//             if (state is ProductDetailsError) {
//               print(state.errorMessage);
//             }
//           },
//           builder: (context, state) {
//             if (state is ProductDetailsInitial) {
//               BlocProvider.of<ProductDetails_bloc>(context)
//                   .add(GetProductDetails(id: widget.id));
//             }
//
//     if (state is ProductDetailsLoading) {
//               ProductDetailsWidget = Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: screenUtil.screenHeight * .1,
//                   ),
//                   Center(
//                       child: Text("جاري التحميل .......",style: TextStyle(fontFamily: AppTheme.fontFamily, fontSize: 20),))
//
//
//                 ],
//               );
//             }
//             if (state is ProductDetailsILoaded) {
//               // var product = state.productDetailsModel;
//               return Column(
//                 children: [
//                   Stack(
//                     children: [
//                       Image.network(
//                        state.productDetailsModel.image,
//                         width: double.infinity,
//                         height: screenUtil.screenHeight * 0.5,
//                         fit: BoxFit.cover,
//                       ),
//                       Positioned(
//                         top: 40,
//                         left: 20,
//                         child: CircleAvatar(
//                           // backgroundColor: Colors.transparent,
//                           backgroundColor: Colors.black.withOpacity(0.2),
//                           child: IconButton(
//                             icon: const Icon(Icons.arrow_back, color: Colors.white),
//                             onPressed: () => Navigator.pop(context),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         top: 40,
//                         right: 20,
//                         child: CircleAvatar(
//                           // backgroundColor: Colors.transparent,
//                           backgroundColor: Colors.black.withOpacity(0.2),
//                           child: const Icon(Icons.favorite_border, color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               state.productDetailsModel.name,
//                               style: const TextStyle(
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               "\$${state.productDetailsModel.price}",
//                               style: const TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xFF6055D8),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 5),
//                         Row(
//                           children: [
//                             const Icon(Icons.star, color: Colors.amber),
//                             SizedBox(width: 5),
//                             Text("${state.productDetailsModel.rating} ( ${state.productDetailsModel.reviews} Reviews )"),
//                           ],
//                         ),
//                         SizedBox(height: 15),
//                         const Text(
//                           "Description",
//                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                         Text(state.productDetailsModel.description),
//                         const SizedBox(height: 15),
//                         const Text(
//                           "Size",
//                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 8),
//                         Row(
//                           children: [
//                             _sizeOption("8"),
//                             _sizeOption("10"),
//                             _sizeOption("38"),
//                             _sizeOption("40", isDisabled: true),
//                           ],
//                         ),
//                         const SizedBox(height: 10),
//                         Row(
//                           children: state.productDetailsModel.sizes.map<Widget>((size) {
//                             return Container(
//                               margin: const EdgeInsets.only(right: 8),
//                               padding: const EdgeInsets.all(12),
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: Colors.grey),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: Text(
//                                 size.toString(),
//                                 style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                               ),
//                             );
//                           }).toList(),
//                         ),
//                         const SizedBox(height: 20),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Expanded(
//                               child: ElevatedButton(
//                                 onPressed: () {},
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0xFF6055D8),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                   ),
//                                   padding: const EdgeInsets.symmetric(vertical: 15),
//                                 ),
//                                 child: const Text(
//                                   "Buy Now",
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 10),
//                             Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: Colors.grey.shade200,
//                               ),
//                               padding: const EdgeInsets.all(10),
//                               child: SvgPicture.asset(
//                                 "assets/images/Frame_smal.svg",
//                                 height: 30,
//                                 width: 30,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             }
//             return const SizedBox();
//           },
//         ),
//       ),
//     );
//   }
//   Widget _sizeOption(String size, {bool isDisabled = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 4.0),
//       child: GestureDetector(
//         onTap: isDisabled ? null : () {},
//         child: Container(
//           width: 50,
//           height: 40,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(color: isDisabled ? Colors.grey : Colors.black),
//             color: isDisabled ? Colors.grey[300] : Colors.white,
//           ),
//           child: Center(
//             child: Text(
//               size,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: isDisabled ? Colors.grey : Colors.black,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:shoppe_screen/core/util/ScreenUtil.dart';
import '../../../../injection_container.dart';
import '../manager/ProductDetails_bloc.dart';

class ProductDetailsPage extends StatefulWidget {
  final String id;
  const ProductDetailsPage({super.key, required this.id});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();

}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int itemisselected = 0;
  // Widget ProductDetailsWidget = Container();
  ScreenUtil screenUtil = ScreenUtil();
 @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<ProductDetails_bloc>().add(GetProductDetails(id: widget.id));
    });
  }
  @override
  Widget build(BuildContext context) {
    
    screenUtil.init(context);
    return Scaffold(
        // body: BlocProvider(
        // create: (context) => sl<ProductDetails_bloc>(),
        // child: BlocConsumer<ProductDetails_bloc, ProductDetailsState>(
          body: BlocConsumer<ProductDetails_bloc, ProductDetailsState>(
          listener: (context, state) {
            if (state is ProductDetailsError) {
              print(state.errorMessage);
            }
          },
          builder: (context, state) {
            if (state is ProductDetailsInitial) {
              BlocProvider.of<ProductDetails_bloc>(context)
                  .add(GetProductDetails(id: widget.id));
            }
            if (state is ProductDetailsLoading) {

              return Center(
                child: Lottie.asset('assets/json/loading.json'),
              );
            }
            if (state is ProductDetailsILoaded) {
              // if (state.productDetailsModel == null) {
              //   return Center(
              //     child: SvgPicture.asset("assets/images/notFound.svg"),
              //   );
              // }

              final product = state.productDetailsModel;
              return
                state.productDetailsModel ==  widget.id ? Center(child: SvgPicture.asset(
                  "assets/images/notFound.svg",
                ),):
                Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Image.network(
                                // state.productDetailsModel.image,
                                product.image ?? '',
                                width: double.infinity,
                                height: screenUtil.screenHeight * .5,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                top: 40,
                                left: 20,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black.withOpacity(0.2),
                                  child: IconButton(
                                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 40,
                                right: 20,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black.withOpacity(0.2),
                                  child: const Icon(Icons.favorite_border, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      // state.productDetailsModel.name,
                                      product.name ?? '',
                                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      // "\$${state.productDetailsModel.price}",
                                      "\$${product.price ?? ''}",
                                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF6055D8)),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Icon(Icons.star, color: Colors.amber),
                                    const SizedBox(width: 5),
                                    // Text("${state.productDetailsModel.rating} ( ${state.productDetailsModel.reviews} Reviews )"),
                                    Text("${product.rating ?? ''} ( ${product.reviews ?? ''} Reviews )"),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                const Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10),
                                // Text('A product description is a form of marketing copy used to describe and explain the benefits of your product. In other words, it provides all the information and details of your product on your ecommerce site. These product details can be one sentence, a short paragraph or bulleted.', style: const TextStyle(color: Colors.grey)),
                                // Text(state.productDetailsModel.description, style: const TextStyle(color: Colors.grey)),
                                Text(product.description ?? '', style: const TextStyle(color: Colors.grey)),
                                const SizedBox(height: 15),
                                const Text("Size", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    _sizeOption("8"),
                                    _sizeOption("10"),
                                    _sizeOption("38"),
                                    _sizeOption("40", isDisabled: true),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      // color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 10, spreadRadius: 2),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF6055D8),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                            ),
                            child: const Text("Buy Now", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset("assets/images/Frame_smal.svg", height: 30, width: 30),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }

            return const SizedBox();
          },
        ),
      // ),
    );
  }

  Widget _sizeOption(String size, {bool isDisabled = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: isDisabled ? null : () {},
        child: Container(
          width: 50,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: isDisabled ? Colors.grey : Colors.black),
            color: isDisabled ? Colors.grey[300] : Colors.white,
          ),
          child: Center(
            child: Text(size, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: isDisabled ? Colors.grey : Colors.black)),
          ),
        ),
      ),
    );
  }
}