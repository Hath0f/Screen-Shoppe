import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoppe_screen/widget/button_widget.dart';
import 'package:shoppe_screen/widget/custom_background.dart';

import '../core/util/app_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Stack(
              children: [
                const CustomBackground(),
                Positioned(
                  top: 250,
                  right: 0,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/images/rb.svg',
                        width: 137.w,
                        height: 151.h,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 450.h),
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 42.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Good to see you back! ❤',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 30.h),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      Spacer(),
                      CustomButton(
                        text: "Next",
                        onPressed: () {
                          AppRouter.navigate(path: '/passowrd', extra: {});
                          // حدث عند الضغط على الزر
                        },
                      ),
                      SizedBox(height: 10.h),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Cancel',
                            style: TextStyle(fontSize: 18.sp, color: Colors.black54),
                          ),
                        ),
                      ),
                      SizedBox(height: 40.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
