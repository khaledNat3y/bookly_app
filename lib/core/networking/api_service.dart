import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final Dio _dio;
  final String? _baseUrl = dotenv.env['BASE_URL'];

  ApiService(this._dio) {
    _dio.options = BaseOptions(
        baseUrl: _baseUrl ?? "",
        connectTimeout: const Duration(seconds: 30),
        receiveDataWhenStatusError: true,
        receiveTimeout: const Duration(seconds: 30),
    );
  }
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    try {
      var response = await _dio.get("$_baseUrl$endpoint");
      return await response.data;
    }catch(e){
      rethrow;
    }
  }
}