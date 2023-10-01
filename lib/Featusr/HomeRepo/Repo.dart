

import 'package:book_app/Featusr/error/faliure.dart';
import 'package:book_app/Featusr/model/model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Faliure,List<Model>>> fetchNewBook();
  Future<Either<Faliure,List<Model>>> FetchFeatuseredBook();

}