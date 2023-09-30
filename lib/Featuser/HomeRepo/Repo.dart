import 'package:book_app/Featuser/model/model.dart';
import 'package:book_app/error/faliure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Faliure,List<Model>>> fetchBestSellerBook();
  Future<Either<Faliure,List<Model>>> FetchFeatuseredBook();

}