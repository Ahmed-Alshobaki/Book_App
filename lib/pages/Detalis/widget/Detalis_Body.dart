import 'package:book_app/core/constant/resources/Manager_Style.dart';
import 'package:book_app/core/constant/resources/manager_fonts.dart';
import 'package:book_app/pages/Home/widgets/itamList.dart';
import 'package:flutter/material.dart';

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
          child: const itamList(),
        ),
        const SizedBox(height: 30,),
        const Text("The Jungle Book",style:TextStyle(fontSize: 30,fontFamily: ManagerFont.GT,fontWeight: FontWeight.w900)),
        const SizedBox(height: 8,),
        const Opacity(opacity: 0.7,
        child: Text("Rudyard Kipling",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),)),
      ],
    );
  }
}
