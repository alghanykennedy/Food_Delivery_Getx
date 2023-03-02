import 'package:get/get.dart';

enum paymentGroup { card, bankAccount }

enum deliveryGroup { doorDelivery, pickUp }

class PaymentController extends GetxController {
  final Rx<paymentGroup> payment = paymentGroup.card.obs;

  void onClickPayment(value) {
    payment.value = value;
  }

  final Rx<deliveryGroup> delivery = deliveryGroup.doorDelivery.obs;

  void onClickDelivery(value) {
    delivery.value = value;
  }

  //TODO: Implement PaymentController

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
