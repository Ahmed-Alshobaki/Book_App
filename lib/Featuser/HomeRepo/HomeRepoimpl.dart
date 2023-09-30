import 'package:book_app/Featuser/HomeRepo/Repo.dart';
import 'package:book_app/Featuser/error/faliure.dart';
import 'package:book_app/Featuser/model/model.dart';

import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Faliure, List<Model>>> FetchFeatuseredBook() {
    // TODO: implement FetchFeatuseredBook
    throw UnimplementedError();
  }

  @override
  Future<Either<Faliure, List<Model>>> fetchBestSellerBook() {
    // TODO: implement fetchBestSellerBook
    throw UnimplementedError();
  }

}