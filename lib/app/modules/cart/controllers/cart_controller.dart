import 'package:flutter/material.dart';
import 'package:fooddelivery/app/modules/cart/views/cart_view.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  // var foods = 0.obs;

  RxList<MyModel> models = <MyModel>[
    MyModel(
        name: 'product1',
        image: 'assets/images/food1.png',
        price: 215.80,
        quantity: 0),
    MyModel(
        name: 'product2',
        image: 'assets/images/food1.png',
        price: 415.30,
        quantity: 0),
    MyModel(
        name: 'product3',
        image: 'assets/images/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product3',
        image: 'assets/images/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product3',
        image: 'assets/images/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product3',
        image: 'assets/images/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product3',
        image: 'assets/images/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product3',
        image: 'assets/images/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product3',
        image: 'assets/images/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product3',
        image: 'assets/images/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product3',
        image: 'assets/images/food1.png',
        price: 115.50,
        quantity: 0),
  ].obs;

  increment(MyModel item) {
    item.quantity++;
    models.refresh();
  }

  decrement(MyModel item) {
    if (item.quantity <= 0) {
      Get.snackbar(
        "Buying food",
        "Can't be less than zero",
        icon: Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
    } else {
      item.quantity--;
    }
    models.refresh();
  }
  //TODO: Implement CartController

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {}
  // void increment() => count.value++;
}
