part of 'fetch_new_book_cubit.dart';

@immutable
abstract class FetchNewBookState {}

class FetchNewBookInitial extends FetchNewBookState {}
class FetchNewBookLoading extends FetchNewBookState {}
class FetchNewBookSuccess extends FetchNewBookState {
  List<Model> listBooks = [];

  FetchNewBookSuccess(this.listBooks);
}
class FetchNewBookFailure extends FetchNewBookState {
  final String message;

  FetchNewBookFailure(this.message);
}
