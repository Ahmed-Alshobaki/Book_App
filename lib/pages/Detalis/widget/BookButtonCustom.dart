import 'package:flutter/material.dart';

class BookButtomyCustom extends StatelessWidget {
   BookButtomyCustom({super.key, required this.text,required this.color,required this.borderRadius,required this.backcolor, required this.fontSize,required this.fontWeight});
   final String text;
   final Color? color;
   final Color? backcolor;
  final BorderRadiusGeometry borderRadius ;
   final double? fontSize ;
   final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 48,
        child: TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: borderRadius
                ),
                backgroundColor: backcolor),
            onPressed: () {},
            child:  Text("${text}",
                style: TextStyle(color: color,fontSize:fontSize,fontWeight:fontWeight))));
  }
}