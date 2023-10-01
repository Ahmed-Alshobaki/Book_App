import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'featusered_book_state.dart';

class FeatuseredBookCubit extends Cubit<FeatuseredBookState> {
  FeatuseredBookCubit() : super(FeatuseredBookInitial());
}
