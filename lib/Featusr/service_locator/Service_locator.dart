import 'package:book_app/Featusr/ApiService/ApiService.dart';
import 'package:book_app/Featusr/HomeRepo/HomeRepoimpl.dart';
import 'package:get_it/get_it.dart';
class ServiceLocator {
 static final  getIt = GetIt.instance;

  void setup() {
    getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(service: ApiService()));
  }
}