import 'package:bloc/bloc.dart';
import 'package:book_app/Featusr/model/model.dart';
import 'package:meta/meta.dart';

part 'featusered_book_state.dart';

class FeatuseredBookCubit extends Cubit<FeatureBookState> {
  FeatuseredBookCubit() : super(FeaturedBookInitial());
}
