import 'package:flutter/material.dart';
import 'package:fooddelivery/app/modules/cart/views/cart_view.dart';
import 'package:fooddelivery/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/detail_product_controller.dart';

class DetailProductView extends GetView<DetailProductController> {
  final DetailProductController detailProductController =
      Get.put(DetailProductController());
  Color _iconColor = Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEDEDED),
        body: Obx(
          () => ListView(
            children: [
              controller.isLoading.value
                  ? CircularProgressIndicator()
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                    trailing: IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: _iconColor,
                                        ),
                                        onPressed: () {
                                          // setState(() {
                                          //   _iconColor = Colors.redAccent;
                                          // });
                                        })),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 275,
                          width: 275,
                          child: Image.network(
                              controller.detailMeal.value?.strMealThumb ?? ''),
                        ),
                        Container(
                          child: Text(
                            controller.detailMeal.value?.strMeal ?? '',
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'N1,900',
                            style: TextStyle(
                                color: Color(0xffFA4A0C),
                                fontSize: 22,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 21.5),
                                child: Text(
                                  'Delivery info',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                child: Text(
                                    'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm'),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  'Return policy',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                child: Text(
                                    'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.'),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => CartView());
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
                                    "Add to cart",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
