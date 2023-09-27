import 'package:book_app/core/constant/resources/manager_colors.dart';
import 'package:book_app/pages/Detalis/detalis.dart';
import 'package:book_app/pages/Detalis/widget/Detalis_Body.dart';

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


