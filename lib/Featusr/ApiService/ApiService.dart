import 'package:dio/dio.dart';

class ApiService {
  String baseUrl = "https://www.googleapis.com/books/v1/";
  Dio dio = new Dio();



  Future<Map<String, dynamic>> getBooks({required String endurl})async {
   var response = await dio.get("$baseUrl$endurl");
    return response.data;
  }
}
