import 'package:book_app/pages/Detalis/widget/BookButtonCustom.dart';
import 'package:flutter/material.dart';

class ButtomBookFiainsh extends StatelessWidget {
  const ButtomBookFiainsh ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
              child: BookButtomyCustom(
                text: '19,99€',
                color: Colors.black,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                backcolor:  Colors.white, fontSize: 16, fontWeight: FontWeight.bold,
              )),
          Expanded(
              child: BookButtomyCustom(
                text: 'Free Preview',
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomRight:   Radius.circular(15),
                    topRight: Radius.circular(15)),
                backcolor: const Color(0xffe67966), fontSize: 16, fontWeight: FontWeight.w600,
              ))
        ],
      ),
    );
  }
}
