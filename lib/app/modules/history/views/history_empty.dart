import 'package:flutter/material.dart';
import 'package:fooddelivery/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../controllers/history_controller.dart';

class HistoryEmpty extends GetView<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 200),
          Container(
            width: double.infinity,
            height: 90,
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage('assets/image/icons/Vector.png'))),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "No history yet",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              horizontal: 55,
              vertical: 20,
            ),
            child: Text(
              "Hit the orange button down below to Create an Order",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            height: 180,
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
                "Start ordering",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
