import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../utils/constants/constants_colors.dart';

class RegisterPage extends StatelessWidget {
const RegisterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/image_register.png',
                      height: 130,
                      width: 130,
                    ),
                    Text('Skin',
                      style: TextStyle(
                        color: ConstantsColors.primaryColor,
                        fontSize: 48,
                        fontWeight: FontWeight.w100
                      ),
                    ),
                    Text('Firts',
                      style: TextStyle(
                        color: ConstantsColors.primaryColor,
                        fontSize: 48,
                        fontWeight: FontWeight.w100
                      ),
                    ),
                    Text('Dermatology center',
                      style: TextStyle(
                        color: ConstantsColors.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 80),
            Expanded(
              child: Column(
                children: [
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labore et dolore \nmagna aliqua.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(207, 45),
                      padding:EdgeInsets.all(10)
                    ),
                    onPressed: () {
                      Get.toNamed("/login");
                    }, 
                    child: Text('Log In', 
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ConstantsColors.secondaryColor,
                      minimumSize: const Size(207, 45),
                      padding:EdgeInsets.all(10)
                    ),
                    onPressed: () {}, 
                    child: Text('Sign Up', 
                      style: TextStyle(
                        color: ConstantsColors.primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}