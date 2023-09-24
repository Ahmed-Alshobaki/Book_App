import 'package:book_app/core/constant/resources/manager_assets.dart';
import 'package:flutter/material.dart';


class itamList extends StatelessWidget {
  const itamList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5/4,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height*.30,
        child: Container(
          margin: EdgeInsetsDirectional.only(end: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffFEBDA6),
              image: const DecorationImage(image: AssetImage(ManagerAssets.test1),fit: BoxFit.fill)
          ),
        ),
      ),
    );
  }
}


