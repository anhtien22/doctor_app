import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_surfix_icon.dart';
import '../utils/constants/constants_colors.dart';

class LoginPage extends StatefulWidget {
const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          }, 
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Welcome',
                style: TextStyle(
                  color: ConstantsColors.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w400
                ),
              )
            ),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w200
              ),
            ),
            Form(
              child: Column(
                children: [
                  Text('Email or Mobile Number'),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Nhập tên người dùng".tr,
                    ),
                  ),
                  Text('Password'),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "*************".tr,
                      suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
                    ),
                  ),
                ],
              )
            )
          ],
        )
      )
    );
  }
}