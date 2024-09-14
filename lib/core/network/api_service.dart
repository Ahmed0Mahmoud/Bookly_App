import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/';
  final Dio _dio;
  ApiService(this._dio);

  get({required String endPoint}) async {
    Response response = await _dio.get("$_baseUrl$endPoint");
    var data = response.data;
    return data;
  }
}
