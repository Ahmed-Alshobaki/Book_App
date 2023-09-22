import 'package:book_app/core/constant/icon/icon_broken.dart';
import 'package:book_app/core/constant/resources/manager_assets.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 16,vertical: 70),
      child: const Row(
        children: [
          Image(image: AssetImage(ManagerAssets.group_splash,),height: 16,),
          Spacer(),
          Icon(IconBroken.Search),
        ],
      ),
    );
  }
}