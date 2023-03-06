import 'package:fooddelivery/app/modules/detail_product/models/detail_meal_model.dart';
import 'package:fooddelivery/app/modules/home/models/meals_model.dart';
import 'package:fooddelivery/app/modules/list_food/models/list_food_model.dart';
import 'package:get/get.dart';

class MealService {
  final _connect = Get.find<GetConnect>();

  Future<Meals> getMeals() async {
    final response = await _connect.get('1/filter.php?c=Seafood',
        decoder: (data) => Meals.fromJson(data as Map<String, dynamic>));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }

  Future<DetailMealsModel> getDetailMeals({required String id}) async {
    final response = await _connect.get('1/lookup.php?i=$id',
        decoder: (data) =>
            DetailMealsModel.fromJson(data as Map<String, dynamic>));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }

  Future<ListFoodModel> getListFood(String value) async {
    final respone = await _connect.get('1/search.php?s=$value',
        decoder: (data) =>
            ListFoodModel.fromJson(data as Map<String, dynamic>));
    if (!respone.hasError) {
      return respone.body!;
    } else {
      throw Get.snackbar('Error', respone.statusCode.toString());
    }
  }
}
