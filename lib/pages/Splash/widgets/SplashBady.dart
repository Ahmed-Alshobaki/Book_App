import 'package:book_app/core/constant/resources/manager_assets.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(ManagerAssets.group_splash),);
  }
}
