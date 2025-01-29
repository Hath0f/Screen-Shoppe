// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
//
// class CustomBackground extends StatelessWidget {
//   const CustomBackground({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Positioned(
//           top: 0,
//           left: 0,
//           width: 300.53.sp ,
//           height: 342.65.sp,
//           child: SvgPicture.asset(
//             'assets/images/lw.svg',
//             width: 170.w,
//             height: 300.h,
//           ),
//         ),
//         Positioned(
//           top: -1,
//           left: -80,
//           width: 320.87.sp ,
//           height: 320.65.sp,
//           child: SvgPicture.asset(
//             'assets/images/lblue.svg',
//             width: 150.w,
//             height: 300.h,
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: SvgPicture.asset(
            'assets/images/lw.svg',
            width: 250.w,
            height: 300.h,
          ),
        ),
        Positioned(
          top: 0.h,
          left: -10.w,
          child: SvgPicture.asset(
            'assets/images/lblue.svg',
            width: 230.w,
            height: 250.h,
          ),
        ),
      ],
    );
  }
}
