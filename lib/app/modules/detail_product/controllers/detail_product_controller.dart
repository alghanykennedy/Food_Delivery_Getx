import 'package:dio/dio.dart';
import 'package:fooddelivery/app/data/meal_service.dart';
import 'package:fooddelivery/app/modules/detail_product/models/detail_meal_model.dart';
import 'package:get/get.dart';

class DetailProductController extends GetxController {
  final dio = Dio();
  RxBool isLoading = false.obs;
  String id = '';
  Rx<Meal?> detailMeal = Meal(idMeal: '').obs;
  final mealService = MealService();

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    id = args['id'];
    getDetail();
  }

  getDetail() async {
    isLoading(true);
    try {
      DetailMealsModel response = await mealService.getDetailMeals(id: id);
      var res = response.meals![0];
      detailMeal(res);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }
}
