import 'package:flutter/material.dart';
import 'package:fooddelivery/app/modules/loginsignup/views/login_screen.dart';
import 'package:fooddelivery/app/modules/loginsignup/views/signup_screen.dart';

import 'package:get/get.dart';

import '../controllers/loginsignup_controller.dart';

class LoginsignupView extends GetView<LoginsignupController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            TabBarView(
              children: [
                LoginScreen(),
                SignUpScreen(),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Image.asset(
                    'assets/images/logo1.png',
                  ),
                  Spacer(),
                  TabBar(
                    unselectedLabelColor: Colors.black,
                    labelStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    labelColor: Colors.black,
                    indicator: UnderlineTabIndicator(
                        borderSide:
                            BorderSide(width: 3.5, color: Colors.orange),
                        insets: EdgeInsets.symmetric(horizontal: 50.0)),
                    tabs: [
                      Tab(
                        text: "Login",
                      ),
                      Tab(
                        text: "Sign-up",
                      )
                    ],
                  ),
                ],
              ),
              alignment: Alignment.center,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
