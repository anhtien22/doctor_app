import 'package:doctor_app/pages/login/login_page.dart';
import 'package:doctor_app/pages/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/splash/splash_page.dart';
import 'pages/splash/splash_page_controller.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor App',
      theme: AppTheme.lightTheme(context),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: "/", 
          page: () => const SplashPage(),
          binding: BindingsBuilder(() => Get.lazyPut<SplashPageController>(() => SplashPageController()))
        ),
        GetPage(
          name: "/register", 
          page: () => const RegisterPage(),
        ),
        GetPage(
          name: "/login", 
          page: () => const LoginPage(),
        ),
      ],
    );
  }
}