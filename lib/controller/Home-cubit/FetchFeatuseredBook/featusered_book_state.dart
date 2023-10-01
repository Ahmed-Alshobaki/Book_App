part of 'featusered_book_cubit.dart';

@immutable
abstract class FeatureBookState {}

class FeaturedBookInitial extends FeatureBookState {}
class FeaturedBookLoaging extends FeatureBookState {}
class FeatureBookSuccess extends FeatureBookState {}
class FeatureBookFailure extends FeatureBookState {}
