import 'package:book_app/core/constant/resources/manager_assets.dart';
import 'package:book_app/core/constant/resources/manager_routes.dart';
import 'package:book_app/core/constant/resources/manager_time.dart';
import 'package:book_app/pages/Home/Home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> animation ;
  @override
  void initState() {
    InitSlideAnimated();
    Future.delayed(const Duration(seconds: ManagerTime.s3),(){
      GoRouter.of(context).pushReplacement(ManagerRoutes.Home);
    });
    super.initState();

  }

  @override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
            position: animation,
            child:Center(child: Image.asset(ManagerAssets.group_splash))
        );
      },

    );
  }
  void InitSlideAnimated() {
    animationController =AnimationController(vsync:this,duration: const Duration(seconds:2) );
    animation = Tween<Offset>(begin:const Offset(0,2),end: const Offset(0,0) ).animate(animationController);
    animationController.forward();
  }
}
