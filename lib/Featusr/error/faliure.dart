import 'package:dio/dio.dart';

abstract class BookFaliure {
  final String message;

  BookFaliure(this.message);
}

class Faliure extends BookFaliure {
  Faliure(super.message);

  factory Faliure.fromDioError(DioError Error){
    switch (Error.type) {
      case DioExceptionType.connectionTimeout:
        return Faliure("connectionTimeout");
      case DioExceptionType.sendTimeout:
        return Faliure("sendTimeout");
      case DioExceptionType.receiveTimeout:
        return Faliure("receiveTimeout");
      case DioExceptionType.badCertificate:
        return Faliure("badCertificate");
      case DioExceptionType.badResponse:
        return Faliure.BioResponse(statusCode: Error.response!.statusCode!, responseData: Error.response!.data);
      case DioExceptionType.cancel:
        return Faliure("cancel");
      case DioExceptionType.connectionError:
        return Faliure("connectionError");
      case DioExceptionType.unknown:
        return Faliure("unknown");
    }
  }

  factory Faliure.BioResponse({required int statusCode,required dynamic responseData}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 402) {
      return Faliure( responseData["error"]["message"]);
    } else {
      return Faliure( "nooo");
    }
  }
}