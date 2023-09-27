import 'package:book_app/core/constant/resources/Manager_Style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
   Rating({super.key,required this.mainAxisAlignment});
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment:mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Color(0xffDEF30E),size: 20,),
        const SizedBox(width: 7,),
        const Text("4.8",style:  ManagerStyles.textstyle16),
        const SizedBox(width: 2,),
        Text("(2255)",style:  ManagerStyles.textstyle14_w300.copyWith(color:Colors.white54 )),
      ],
    );
  }
}
