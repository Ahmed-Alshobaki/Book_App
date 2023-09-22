
import 'package:book_app/core/constant/icon/icon_broken.dart';
import 'package:book_app/core/constant/resources/manager_assets.dart';
import 'package:book_app/core/constant/resources/manager_colors.dart';
import 'package:book_app/pages/Home/widgets/AppBar.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   return  const Scaffold(
        body: Column(
          children: [
            AppBarHome()
          ],
        ),
   );
  }
}


