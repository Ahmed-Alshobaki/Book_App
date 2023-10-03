
import 'package:book_app/Featusr/ApiService/ApiService.dart';
import 'package:book_app/Featusr/HomeRepo/Repo.dart';
import 'package:book_app/Featusr/error/faliure.dart';
import 'package:book_app/Featusr/model/model.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl({required this.service});
  late ApiService service ;

  @override
  Future<Either<Faliure, List<Model>>> fetchNewBook() async {
    try {
      var dataBook = await service.getBooks(
          endurl:
          "volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest");
      List<Model> result = [];
      if (dataBook.containsKey("items")) {
        for (var dataBook in dataBook["items"]) {
          Model model = Model.fromJson(dataBook);
          result.add(model);
        }
      }
      return right(result);
    } on Exception catch (e) {
      if(e is DioError){
        left(Faliure.fromDioError(e));
      }
      return left(Faliure("opssss"));
    }
  }

  @override
  Future<Either<Faliure, List<Model>>> FetchFeatuseredBook()async {
    try {
      var dataBook = await service.getBooks(
          endurl:
          "volumes?Filtering=free-ebooks&q=subject:programming");
      List<Model> result = [];
      if (dataBook.containsKey("items")) {
        for (var dataBook in dataBook["items"]) {
          Model model = Model.fromJson(dataBook);
          result.add(model);
        }
      }
      return right(result);
    } on Exception catch (e) {
      if(e is DioError){
        left(Faliure.fromDioError(e));
      }
      return left(Faliure("opssss"));
    }
  }


}
