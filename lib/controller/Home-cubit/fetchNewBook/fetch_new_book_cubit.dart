import 'package:bloc/bloc.dart';
import 'package:book_app/Featusr/HomeRepo/Repo.dart';
import 'package:book_app/Featusr/model/model.dart';
import 'package:book_app/controller/Home-cubit/fetchNewBook/fetch_new_book_cubit.dart';
import 'package:meta/meta.dart';

part 'fetch_new_book_state.dart';

class FetchNewBookCubit extends Cubit<FetchNewBookState> {
  FetchNewBookCubit(this.homeRepo) : super(FetchNewBookInitial());
  HomeRepo homeRepo;

  Fetch_books ()async{
    emit(FetchNewBookLoading());
     var result= await homeRepo.fetchNewBook();
     result.fold((l) {
       emit(FetchNewBookFailure(l.message));
     }, (r)  {
       FetchNewBookSuccess(r);
     });
  }


}
