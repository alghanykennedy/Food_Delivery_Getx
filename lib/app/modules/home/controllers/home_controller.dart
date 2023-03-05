import 'package:dio/dio.dart';
import 'package:fooddelivery/app/data/meal_service.dart';
import 'package:fooddelivery/app/modules/home/models/meals_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final dio = Dio();
  RxBool isLoading = false.obs;
  RxList<Meal> listMeal = <Meal>[].obs;
  final mealService = MealService();

  @override
  void onInit() {
    super.onInit();
    getListMeals();
  }

  getListMeals() async {
    isLoading(true);
    try {
      var response = await mealService.getMeals();
      listMeal.addAll(response.meals);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }
}
