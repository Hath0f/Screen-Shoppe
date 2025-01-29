
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoppe_screen/features/Product/presintation/page/productsPage.dart';
import 'package:shoppe_screen/features/ProductDeatils/presintation/page/productDetailsPage.dart';
import 'package:shoppe_screen/pages/create_account_page.dart';
import 'package:shoppe_screen/pages/login_page.dart';
import 'package:shoppe_screen/pages/password.dart';

import 'package:shoppe_screen/pages/start.dart';
class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();

  static const String initialPage = '/start';

  static final GoRouter routers = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: initialPage,
    routes: [
      GoRoute(
        name: '/start',
        path: '/start',
        builder: (context, state) {
          return const StartPage();
        },
      ),
      GoRoute(
        name: '/createAccount',
        path: '/createAccount',
        builder: (context, state) {
          return const CreateAccountPage();
        },
      ),

      GoRoute(
        name: '/login',
        path: '/login',
        builder: (context, state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        name: '/passowrd',
        path: '/passowrd',
        builder: (context, state) {
          return const PasswordPage();
        },
      ),
      GoRoute(
        name: '/product',
        path: '/product',
        builder: (context, state) {
          return const ProductPage();
        },
      ),

      GoRoute(
        name: '/productDetails',
        path: '/productDetails',
        builder: (context, state) {
          return  const ProductDetailsPage(id: initialPage);
        },
      ),
    ],
  );

  static Future<dynamic> navigate({required String path, var extra}) {
    return navigatorKey.currentContext!.push(path, extra: extra);
  }

  static void navigateAndClearAll({required String path, var extra}) {
    navigatorKey.currentContext!.go(path, extra: extra);
  }

  static void back({String? callBackAction}) {
    navigatorKey.currentContext!.pop(callBackAction);
  }

  static void popAndNavigate({required String path, var extra}) {
    navigatorKey.currentContext!.pop();
    navigatorKey.currentContext!.pushNamed(path, extra: extra);
  }
}
