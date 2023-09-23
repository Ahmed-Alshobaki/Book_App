
import 'package:book_app/core/constant/icon/icon_broken.dart';
import 'package:book_app/core/constant/resources/manager_assets.dart';
import 'package:book_app/core/constant/resources/manager_colors.dart';
import 'package:book_app/pages/Home/widgets/AppBar.dart';
import 'package:book_app/pages/Home/widgets/itamList.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return   Container(
     color: ManagerColors.primaryColor,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 3),
     child: Scaffold(
          body: Column(
            children: [
              const AppBarHome(),
             SizedBox(
               height:  MediaQuery.sizeOf(context).height*.30,
               child: ListView.builder(scrollDirection: Axis.horizontal,itemCount:5,itemBuilder: (context,i){
                 return  const itamList();
               }),
             )
            ],
          ),
     ),
   );
  }
}

