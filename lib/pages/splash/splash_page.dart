import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/constants_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ super.key });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigateHome();
  }

  void navigateHome() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed('/register');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantsColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/image_splash.png',
              height: 130,
              width: 130,
            ),
            Text('Skin',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48, 
                fontWeight: FontWeight.w100
              ),
            ),
            Text('Firts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w100
              ),
            ),
            Text('Dermatology center',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      )
    );
  }
}