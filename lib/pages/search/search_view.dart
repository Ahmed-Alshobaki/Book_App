import 'package:book_app/core/constant/icon/icon_broken.dart';
import 'package:book_app/pages/search/search_view.dart';
import 'package:book_app/pages/search/widget/SearchBody.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        child: SafeArea(
          child: SearchBody(),
        ),
      ),
    );
  }
}

