import 'package:flutter/material.dart';
import 'package:fooddelivery/app/modules/home/views/home_view.dart';
import 'package:fooddelivery/app/routes/app_pages.dart';

import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Column(
        children: [
          const SizedBox(
            height: 320,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration:
                    InputDecoration(hintText: "your name", labelText: "Name"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "your phone number", labelText: "Phone Number"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "you@example.com", labelText: "E-mail Address"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: "your password",
                  labelText: "Password",
                ),
                autofocus: false,
                obscureText: true,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () {
              Get.offAllNamed(Routes.HOME);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 25,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.orange,
              ),
              child: Text(
                "Sign-up",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
