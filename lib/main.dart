import 'package:book_app/controller/Home-cubit/home_cubit.dart';

import 'package:book_app/core/constant/PagesGetx/Pages.dart';
import 'package:book_app/core/constant/resources/manager_colors.dart';
import 'package:book_app/core/constant/resources/manager_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:bloc/bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => HomeCubit())],
        child: GetMaterialApp(
          theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: ManagerColors.primaryColor,textTheme: GoogleFonts.aBeeZeeTextTheme(ThemeData.dark().textTheme),),

          debugShowCheckedModeBanner: false,
          getPages: Pages.getPages,
          initialRoute: ManagerRoutes.Home,
        ));
  }
}
