import 'package:get/get.dart';

enum RadioButtonCheckout { doorDelivery, pickUp }

class CheckoutController extends GetxController {
  final Rx<RadioButtonCheckout> character =
      RadioButtonCheckout.doorDelivery.obs;

  void onClickRadio(value) {
    character.value = value;
  }

  //TODO: Implement CheckoutController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
