
import 'package:book_app/core/constant/resources/manager_routes.dart';
import 'package:book_app/pages/Home/Home.dart';
import 'package:book_app/pages/Splash/SplashView.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Pages {
    static  List<GetPage<dynamic>>? getPages= [
        GetPage(name: ManagerRoutes.Home, page:() => Home()),
      GetPage(name: ManagerRoutes.SplashView, page:() => SplashView())
  ];


}

