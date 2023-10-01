import 'package:bloc/bloc.dart';
import 'package:book_app/Featusr/HomeRepo/Repo.dart';
import 'package:book_app/Featusr/model/model.dart';
import 'package:meta/meta.dart';

part 'featusered_book_state.dart';

class FeatuseBookCubit extends Cubit<FeatureBookState> {
  FeatuseBookCubit(this.home) : super(FeaturedBookInitial());
   final HomeRepo home;

   void fetchBook()async{
     emit(FeaturedBookLoaging());
    var result = await home.fetchNewBook();
    result.fold((l) {
      emit(FeatureBookFailure(l.message));
    }, (r) {
      emit(FeatureBookSuccess(r));
    });

   }


}
