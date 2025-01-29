// import 'package:dartz/dartz.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:shoppe_screen/features/Product/data/model/ProductModel.dart';
// import 'package:shoppe_screen/features/ProductDeatils/presintation/page/productDetailsPage.dart';
//
// class ProductCard extends StatefulWidget {
//    ProductModel productModel;
//
//    ProductCard( {super.key,required this.productModel});
// ScreenUtil screenUtil = ScreenUtil();
//   @override
//   State<ProductCard> createState() => _ProductCardState();
// }
// class _ProductCardState extends State<ProductCard> {
//   bool isFavorite = false;
//
//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.init(context);
//     return InkWell(
//       onTap: (){
//         Navigator.push(context,MaterialPageRoute(builder: (context) =>ProductDetailsPage(id: ,)));
//       },
//       child: Container(
//         margin: const EdgeInsets.all(6), // تصغير الهوامش لتتناسب مع التصميم
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12), // تصغير الحواف قليلاً
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               spreadRadius: 1,
//               blurRadius: 4,
//               offset: const Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // صورة المنتج مع أيقونة القلب
//             Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(12),
//                     topRight: Radius.circular(12),
//                   ),
//                   child: Image.network(
//                     widget.productModel.image,
//                     height: 130, // تقليل ارتفاع الصورة
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned(
//                   top: 6,
//                   right: 6,
//                   child: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         isFavorite = !isFavorite;
//                       });
//                     },
//                     child: Icon(
//                       isFavorite ? Icons.favorite : Icons.favorite_border,
//                       color: Colors.white, // لون القلب الأحمر
//                       size: 20, // تصغير أيقونة القلب قليلاً
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             // النصوص والأيقونات السفلية
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     widget.productModel.name,
//                     style: const TextStyle(
//                       fontSize: 14, // تصغير النص قليلاً
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   const SizedBox(height: 4),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         '\$${widget.productModel.price}',
//                         style: const TextStyle(
//                           fontSize: 14, // تصغير النص قليلاً
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blue,
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           // قم بتحديد الإجراء عند الضغط
//                         },
//                         child: SvgPicture.asset(
//                           'assets/images/Frame.svg',
//                           width: 28, // تقليل حجم الأيقونة
//                           height: 28,
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:dartz/dartz.dart' hide State; // إصلاح التعارض مع Flutter
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe_screen/features/Product/data/model/ProductModel.dart';
import 'package:shoppe_screen/features/ProductDeatils/presintation/page/productDetailsPage.dart';

import '../../../../core/util/app_router.dart';

class ProductCard extends StatefulWidget {
  final ProductModel productModel; // استخدم final لمنع التعديل

  const ProductCard({super.key, required this.productModel}); // إضافة const

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // AppRouter.navigate(path: '/productDetails', extra: {id: widget.productModel.id.toString()});
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(id: widget.productModel.id.toString()),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Image.network(
                    widget.productModel.image,
                    height: 130,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 6,
                  right: 6,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productModel.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${widget.productModel.price.toString()}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // قم بتحديد الإجراء عند الضغط
                        },
                        child: SvgPicture.asset(
                          'assets/images/Frame.svg',
                          width: 28,
                          height: 28,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
