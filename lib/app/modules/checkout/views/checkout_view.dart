import 'package:flutter/material.dart';
import 'package:fooddelivery/app/modules/payment/views/payment_view.dart';
import 'package:fooddelivery/app/modules/profile_change/views/profile_change_view.dart';
import 'package:fooddelivery/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  CheckoutController checkoutController = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Checkout',
            style: TextStyle(color: Colors.black),
          ),
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          'Delivery',
                          style: TextStyle(
                              fontSize: 38, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Address details',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          child: Text(
                            "change",
                            style:
                                TextStyle(fontSize: 16, color: Colors.orange),
                          ),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      height: 14,
                                      child: const Text(
                                        "Marvis Ighedosa",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                    Divider(
                                        color: Colors.grey[500],
                                        indent: 5,
                                        endIndent: 25),
                                    Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      height: 14,
                                      child: const Text(
                                        "Km 5 refinery road oppsite",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                    Divider(
                                        color: Colors.grey[500],
                                        indent: 5,
                                        endIndent: 25),
                                    Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      height: 14,
                                      child: const Text(
                                        "08572163546271",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: const Text(
                          'Delivery method',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          height: 130,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Obx(() => ListTile(
                                    title: Container(
                                      child: Row(
                                        children: [
                                          const Text(
                                            "Door delivery",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                    ),
                                    leading: Radio<RadioButtonCheckout>(
                                      value: RadioButtonCheckout.doorDelivery,
                                      groupValue:
                                          checkoutController.character.value,
                                      activeColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => Colors.orange),
                                      onChanged: (value) {
                                        checkoutController.onClickRadio(
                                            RadioButtonCheckout.doorDelivery);
                                      },
                                    ),
                                  )),
                              Divider(
                                  color: Colors.grey[500],
                                  indent: 80,
                                  endIndent: 30),
                              Obx(() => ListTile(
                                    title: Container(
                                      child: Row(
                                        children: [
                                          const Text(
                                            "Pick up",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                    ),
                                    leading: Radio<RadioButtonCheckout>(
                                      value: RadioButtonCheckout.pickUp,
                                      groupValue:
                                          checkoutController.character.value,
                                      activeColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => Colors.orange),
                                      onChanged: (value) {
                                        checkoutController.onClickRadio(
                                            RadioButtonCheckout.pickUp);
                                      },
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 65,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '23,000',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: InkWell(
                          onTap: () {
                            Get.to(() => PaymentView());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 70,
                                  vertical: 25,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.orange,
                                ),
                                child: Text(
                                  "Proceed to payment",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
