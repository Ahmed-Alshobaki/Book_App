part of 'featusered_book_cubit.dart';

@immutable
abstract class FeatureBookState {}

class FeaturedBookInitial extends FeatureBookState {}
class FeaturedBookLoaging extends FeatureBookState {}
class FeatureBookSuccess extends FeatureBookState {
  List<Model> ListBook= [];

  FeatureBookSuccess(this.ListBook);
}
class FeatureBookFailure extends FeatureBookState {
  late final String message ;

  FeatureBookFailure(this.message);
}
