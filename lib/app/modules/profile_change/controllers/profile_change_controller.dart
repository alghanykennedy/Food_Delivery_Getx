import 'package:get/get.dart';

enum RadioButtonProfile { cardProfile, bankAccountProfile, paypalProfile }

class ProfileChangeController extends GetxController {
  final Rx<RadioButtonProfile> profile = RadioButtonProfile.cardProfile.obs;

  void onClickProfile(value) {
    profile.value = value;
  }
  //TODO: Implement ProfileChangeController

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
