import 'package:book_app/pages/Home/widgets/itamList.dart';
import 'package:flutter/material.dart';

class listviewBooksimilar extends StatelessWidget {
  const listviewBooksimilar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .18,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, i) {
            return const itamList();
          }),
    );
  }
}