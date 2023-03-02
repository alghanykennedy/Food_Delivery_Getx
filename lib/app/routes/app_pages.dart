import 'package:get/get.dart';

import 'package:fooddelivery/app/modules/cart/bindings/cart_binding.dart';
import 'package:fooddelivery/app/modules/cart/views/cart_view.dart';
import 'package:fooddelivery/app/modules/checkout/bindings/checkout_binding.dart';
import 'package:fooddelivery/app/modules/checkout/views/checkout_view.dart';
import 'package:fooddelivery/app/modules/detail_product/bindings/detail_product_binding.dart';
import 'package:fooddelivery/app/modules/detail_product/views/detail_product_view.dart';
import 'package:fooddelivery/app/modules/history/bindings/history_binding.dart';
import 'package:fooddelivery/app/modules/history/views/history_view.dart';
import 'package:fooddelivery/app/modules/home/bindings/home_binding.dart';
import 'package:fooddelivery/app/modules/home/views/home_view.dart';
import 'package:fooddelivery/app/modules/list_food/bindings/list_food_binding.dart';
import 'package:fooddelivery/app/modules/list_food/views/list_food_view.dart';
import 'package:fooddelivery/app/modules/login/bindings/login_binding.dart';
import 'package:fooddelivery/app/modules/login/views/login_view.dart';
import 'package:fooddelivery/app/modules/loginsignup/bindings/loginsignup_binding.dart';
import 'package:fooddelivery/app/modules/loginsignup/views/loginsignup_view.dart';
import 'package:fooddelivery/app/modules/offers/bindings/offers_binding.dart';
import 'package:fooddelivery/app/modules/offers/views/offers_view.dart';
import 'package:fooddelivery/app/modules/orders/bindings/orders_binding.dart';
import 'package:fooddelivery/app/modules/orders/views/orders_view.dart';
import 'package:fooddelivery/app/modules/payment/bindings/payment_binding.dart';
import 'package:fooddelivery/app/modules/payment/views/payment_view.dart';
import 'package:fooddelivery/app/modules/profile/bindings/profile_binding.dart';
import 'package:fooddelivery/app/modules/profile/views/profile_view.dart';
import 'package:fooddelivery/app/modules/profile_change/bindings/profile_change_binding.dart';
import 'package:fooddelivery/app/modules/profile_change/views/profile_change_view.dart';
import 'package:fooddelivery/app/modules/splash/bindings/splash_binding.dart';
import 'package:fooddelivery/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_CHANGE,
      page: () => ProfileChangeView(),
      binding: ProfileChangeBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.ORDERS,
      page: () => OrdersView(),
      binding: OrdersBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PRODUCT,
      page: () => DetailProductView(),
      binding: DetailProductBinding(),
    ),
    GetPage(
      name: _Paths.LIST_FOOD,
      page: () => ListFoodView(),
      binding: ListFoodBinding(),
    ),
    GetPage(
      name: _Paths.OFFERS,
      page: () => OffersView(),
      binding: OffersBinding(),
    ),
    GetPage(
      name: _Paths.LOGINSIGNUP,
      page: () => LoginsignupView(),
      binding: LoginsignupBinding(),
    ),
  ];
}
