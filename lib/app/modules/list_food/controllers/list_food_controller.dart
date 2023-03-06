import 'package:dio/dio.dart';
import 'package:fooddelivery/app/data/meal_service.dart';
import 'package:fooddelivery/app/modules/list_food/models/list_food_model.dart';
import 'package:get/get.dart';

class ListFoodController extends GetxController {
  final foodList = [
    {'name': 'Veggoe Tomatto Mix', 'icon': 'assets/image/food1.png'},
    {'name': 'Egg and Cucumber..', 'icon': 'assets/image/food1.png'},
    {'name': 'Fried Chicken m.', 'icon': 'assets/image/food1.png'},
    {'name': 'Moi-moi and Ekpa', 'icon': 'assets/image/food1.png'},
    {'name': 'Bakpau', 'icon': 'assets/image/food1.png'},
    {'name': 'chuankie', 'icon': 'assets/image/food1.png'},
  ];

  final dio = Dio();
  RxBool isLoading = false.obs;
  RxList<Meal> listFood = <Meal>[].obs;
  final mealService = MealService();
  var searchList = <Meal>[].obs;
  var text = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getListFood();
  }

  getListFood() async {
    isLoading(true);
    try {
      var response = await mealService.getListFood(text.value);
      listFood.addAll(response.meals);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }

  void onTextChanged(String text) {
    this.text(text);
    searchList.clear();
    if (text.isEmpty) {
      listFood.forEach((element) {
        searchList.add(element);
      });
    } else {
      listFood.forEach((element) {
        if (element.strMeal.toLowerCase().contains(text.toLowerCase())) {
          searchList.add(element);
        }
        searchList.refresh();
      });
    }
  }
}
