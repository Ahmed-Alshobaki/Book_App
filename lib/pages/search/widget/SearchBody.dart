import 'package:book_app/core/constant/icon/icon_broken.dart';
import 'package:book_app/pages/Home/widgets/BestSellerItam.dart';
import 'package:book_app/pages/Home/widgets/itamList.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            suffixIcon: const Icon(IconBroken.Search),
            enabledBorder: buildOutlineInputBorderCustom(),
            focusedBorder: buildOutlineInputBorderCustom(),
          ),
        ),
        const Expanded(child: ListBookInSearch()),
      ],
    );
  }
  OutlineInputBorder buildOutlineInputBorderCustom() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.white));
  }
}

class ListBookInSearch extends StatelessWidget {
  const ListBookInSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 10,itemBuilder: (context,i){
      return   const Padding(padding: EdgeInsetsDirectional.only(top: 15,),
      child: BestSellerItam());
    });
  }
}
