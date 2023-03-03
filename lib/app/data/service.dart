import 'package:dio/dio.dart';

Future<void> initDio() async {
  final dio = Dio();
  final url = 'https://www.themealdb.com/api/json/v1/';
  dio.options.baseUrl = url;
}
