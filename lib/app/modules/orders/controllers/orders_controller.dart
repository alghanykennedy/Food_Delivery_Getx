import 'package:fooddelivery/app/modules/home/models/meals_model.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController with StateMixin<Meals> {
  //TODO: Implement OrdersController

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

  Future tets() async {
    change(null, status: RxStatus.loading());

    change(null, status: RxStatus.error('error'));
  }
}
