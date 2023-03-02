import 'package:flutter/material.dart';
import 'package:fooddelivery/app/modules/checkout/views/checkout_view.dart';
import 'package:fooddelivery/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  PaymentController paymentController = Get.put(PaymentController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffEDEDED),
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Stack(children: [
            Text(
              "Checkout",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: "SFprotext/SF-Pro-Text-Semibold",
                color: Colors.black,
              ),
            ),
          ]),
          centerTitle: true,
          backgroundColor: Color(0xffEDEDED),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 24),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Payment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  fontFamily: "SFprotext/SF-Pro-Text-Regular",
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Payment Method",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: "SFprotext/SF-Pro-Text-Regular",
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 205,
                width: 315,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Obx(
                      () => ListTile(
                        title: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFF47B0A)),
                                // child: Image.asset('assets/card.png'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Card",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        leading: Radio<paymentGroup>(
                          value: paymentGroup.card,
                          groupValue: paymentController.payment.value,
                          activeColor: Color(0xFFFA4A0C),
                          onChanged: (value) {
                            paymentController.onClickPayment(paymentGroup.card);
                            // setState(() {
                            //   _char = value;
                            // });
                          },
                        ),
                      ),
                    ),
                    Divider(color: Colors.black26, indent: 80, endIndent: 30),
                    Obx(
                      () => ListTile(
                        title: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFEB4796)),
                                // child: Image.asset('assets/bank.png'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Bank Account",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        leading: Radio<paymentGroup>(
                          value: paymentGroup.bankAccount,
                          groupValue: paymentController.payment.value,
                          activeColor: Color(0xFFFA4A0C),
                          onChanged: (value) {
                            paymentController
                                .onClickPayment(paymentGroup.bankAccount);
                            // setState(() {
                            //   _char = value;
                            // });
                          },
                        ),
                      ),
                    ),
                    Divider(color: Colors.black26, indent: 80, endIndent: 30),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Delivery Method",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: "SFprotext/SF-Pro-Text-Regular",
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 156,
                width: 315,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Obx(
                      () => ListTile(
                        title: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Door Delivery",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        leading: Radio<deliveryGroup>(
                          value: deliveryGroup.doorDelivery,
                          groupValue: paymentController.delivery.value,
                          activeColor: Color(0xFFFA4A0C),
                          onChanged: (value) {
                            paymentController
                                .onClickDelivery(deliveryGroup.doorDelivery);
                            // setState(() {
                            //   _char = value;
                            // });
                          },
                        ),
                      ),
                    ),
                    Divider(color: Colors.black26, indent: 80, endIndent: 30),
                    Obx(
                      () => ListTile(
                        title: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Pick up",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        leading: Radio<deliveryGroup>(
                          value: deliveryGroup.pickUp,
                          groupValue: paymentController.delivery.value,
                          activeColor: Color(0xFFFA4A0C),
                          onChanged: (value) {
                            paymentController
                                .onClickDelivery(deliveryGroup.pickUp);
                            // setState(() {
                            //   _char = value;
                            // });
                          },
                        ),
                      ),
                    ),
                    Divider(color: Colors.black26, indent: 80, endIndent: 30),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: Container(
                  height: 50,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Color(0xffEDEDED),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "SFprotext",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      Container(
                        child: Text(
                          "23.000",
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: "SFprotext",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 41,
              ),
              InkWell(
                onTap: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
