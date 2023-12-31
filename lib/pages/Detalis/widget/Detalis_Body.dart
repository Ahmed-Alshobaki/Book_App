import 'package:book_app/core/constant/resources/Manager_Style.dart';
import 'package:book_app/core/constant/resources/manager_fonts.dart';
import 'package:book_app/pages/Detalis/widget/BookButtonCustom.dart';
import 'package:book_app/pages/Detalis/widget/ButtomBookFiainsh.dart';
import 'package:book_app/pages/Detalis/widget/Detalis_Body.dart';
import 'package:book_app/pages/Detalis/widget/listviewBooksimilar.dart';
import 'package:book_app/pages/Detalis/widget/rating.dart';
import 'package:book_app/pages/Home/widgets/itamList.dart';
import 'package:flutter/material.dart';

class DetalisBody extends StatelessWidget {
  const DetalisBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      slivers: [
       SliverFillRemaining(
         child: Container(
           padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
           child: Column(
             children: [
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: width * 0.25),
                 child: const itamList(),
               ),
               const Expanded(
                 child: SizedBox(
                   height: 25,
                 ),
               ),
               const Text("The Jungle Book",
                   style: TextStyle(
                       fontSize: 30,
                       fontFamily: ManagerFont.GT,
                       fontWeight: FontWeight.w900)),
               const SizedBox(
                 height: 7,
               ),
               const Opacity(
                   opacity: 0.7,
                   child: Text(
                     "Rudyard Kipling",
                     style: TextStyle(
                         fontSize: 17,
                         fontWeight: FontWeight.w400,
                         fontStyle: FontStyle.italic),
                   )),
               const SizedBox(
                 height: 7,
               ),
               Rating(
                 mainAxisAlignment: MainAxisAlignment.center,
               ),
               const Expanded(child: SizedBox(height: 40,)),
               const ButtomBookFiainsh(),
               const Expanded(child: SizedBox(height: 40,)),
               const Align(
                   alignment: Alignment.bottomLeft,
                   child: Text("You can also Like",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
               const SizedBox(height: 20,),
               const listviewBooksimilar(),
               const SizedBox(height: 40,),
             ],
           ),
         ),
       )
      ],
    );

  }
}


