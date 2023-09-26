
import 'package:book_app/core/constant/resources/manager_routes.dart';
import 'package:book_app/pages/Detalis/detalis.dart';
import 'package:book_app/pages/Home/Home.dart';
import 'package:book_app/pages/Splash/SplashView.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
class Pages {

  static final  GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: ManagerRoutes.Home,
        builder: (BuildContext context, GoRouterState state) {
          return const Home();
        },
      ),
      GoRoute(
        path: ManagerRoutes.DetalisBook,
        builder: (BuildContext context, GoRouterState state) {
          return const DetalisBook();
        },
      ),

    ],
  );
}

