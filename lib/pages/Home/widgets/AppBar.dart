import 'package:book_app/core/constant/icon/icon_broken.dart';
import 'package:book_app/core/constant/resources/manager_assets.dart';
import 'package:book_app/core/constant/resources/manager_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsetsDirectional.only(start: MediaQuery.sizeOf(context).height*0.01,end: MediaQuery.sizeOf(context).height*0.01,top:  MediaQuery.sizeOf(context).height*0.07,bottom:  MediaQuery.sizeOf(context).height*0.05,),
      child:  Row(
        children: [
          const Image(image: AssetImage(ManagerAssets.group_splash,),height: 16,),
          const Spacer(),
          IconButton( icon: const Icon(IconBroken.Search), onPressed: () {
            GoRouter.of(context).push(ManagerRoutes.Search);
          },),
        ],
      ),
    );
  }
}