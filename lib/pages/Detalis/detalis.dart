import 'package:book_app/core/constant/resources/manager_colors.dart';
import 'package:book_app/pages/Detalis/widget/Detalis_Appbar.dart';
import 'package:book_app/pages/Home/widgets/itamList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetalisBook extends StatelessWidget {
  const DetalisBook({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
          elevation: 0,
        backgroundColor: ManagerColors.primaryColor,
        leading: IconButton(onPressed: () {  }, icon: const Icon(Icons.close),),
        actions: [IconButton(onPressed: () {  }, icon: const Icon(Icons.shopping_cart),),],
      ),
      body:const DetalisBody() ,
    );
  }
}


class DetalisBody extends StatelessWidget {
  const DetalisBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width  =MediaQuery.of(context).size.width;
    var height  =MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.25),
          child: itamList(),

    ),




      ],
    );
  }
}
