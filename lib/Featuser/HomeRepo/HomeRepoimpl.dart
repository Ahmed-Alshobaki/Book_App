import 'package:book_app/Featuser/ApiService/ApiService.dart';
import 'package:book_app/Featuser/HomeRepo/Repo.dart';
import 'package:book_app/Featuser/error/faliure.dart';
import 'package:book_app/Featuser/model/model.dart';

import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_unsafe.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Faliure, List<Model>>> FetchFeatuseredBook() async {
    try {
      ApiService service = ApiService();
      var dataBook = await service.getBooks(
          endurl:
              "volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest ");
      List<Model> result = [];
      if (dataBook.containsKey("items")) {
        for (var dataBook in dataBook["items"]) {
          Model model = Model.fromJson(dataBook);
          result.add(model);
        }
      }
      return right(result);
    } on Exception catch (e) {
      return left(Faliure());
    }
  }

  @override
  Future<Either<Faliure, List<Model>>> fetchBestSellerBook() {
    // TODO: implement fetchBestSellerBook
    throw UnimplementedError();
  }
}
