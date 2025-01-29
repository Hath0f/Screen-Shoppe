import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe_screen/widget/button_widget.dart';

import '../core/util/app_router.dart';

  class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                height: 134.h,
                width: 134.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      offset: Offset(0, 3),
                      blurRadius: 8,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/images/package.svg",
                    height: 80.h,
                    width: 80.w,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                'Shoppe',
                style: TextStyle(
                  fontSize: 48.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Beautiful eCommerce UI Kit\nfor your online store',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black54,
                ),
              ),
              Spacer(),
              CustomButton(
                text: "Let's get started",
                onPressed: () {
                  AppRouter.navigate(path: '/createAccount', extra: {});
                  // حدث عند الضغط على الزر
                },
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I already have an account',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Icon(
                      Icons.arrow_circle_right,
                      color: Colors.blue,
                      size: 24.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
