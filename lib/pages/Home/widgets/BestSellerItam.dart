import 'package:book_app/core/constant/resources/Manager_Style.dart';
import 'package:book_app/core/constant/resources/manager_assets.dart';
import 'package:book_app/core/constant/resources/manager_routes.dart';
import 'package:book_app/pages/Detalis/widget/rating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerItam extends StatelessWidget {
  const BestSellerItam({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).pushReplacement(ManagerRoutes.DetalisBook);
      },
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
              child: AspectRatio(
                aspectRatio: 2.5/4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffFEBDA6),
                      image: const DecorationImage(image: AssetImage(ManagerAssets.test1))),

                ),
              ),
            ),
            const SizedBox(width: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4,),
                Container(
                  margin: const EdgeInsetsDirectional.only(top: 3),
                  width: 170,
                  child: const Text("Harry Potter and the Goblet of Fire",style:  ManagerStyles.textstyle20,
                    overflow:TextOverflow.ellipsis ,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 4,),
                Container(
                  margin: const EdgeInsetsDirectional.only(top: 3),
                  width: 120,
                  child: Text("J.K. Rowling",style:  ManagerStyles.textstyle14.copyWith(color:Colors.white54 ),
                    overflow:TextOverflow.ellipsis ,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(height: 4,),
                Row(children: [
                  Container(
                    margin: const EdgeInsetsDirectional.only(top: 3),
                    width: 120,
                    child: const Text("19.99 €",style:  ManagerStyles.textstyle20_w700 ),
                  ),
                  Rating(mainAxisAlignment: MainAxisAlignment.start,)

                ],)
              ],
            )
          ]
      ),
    );
  }
}