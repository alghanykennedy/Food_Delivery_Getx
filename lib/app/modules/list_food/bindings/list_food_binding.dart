import 'package:get/get.dart';

import '../controllers/list_food_controller.dart';

class ListFoodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListFoodController>(
      () => ListFoodController(),
    );
  }
}
