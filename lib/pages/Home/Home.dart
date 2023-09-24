import 'package:book_app/core/constant/icon/icon_broken.dart';
import 'package:book_app/core/constant/resources/Manager_Style.dart';
import 'package:book_app/core/constant/resources/manager_assets.dart';
import 'package:book_app/core/constant/resources/manager_colors.dart';
import 'package:book_app/core/constant/resources/manager_fonts.dart';
import 'package:book_app/pages/Home/widgets/AppBar.dart';
import 'package:book_app/pages/Home/widgets/itamList.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsDirectional.only(start: 16, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarHome(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return const itamList();
                  }),
            ),
            const SizedBox(
              height: 40,
            ),
             const Text(
              "Best Seller",
              style: ManagerStyles.textstyle20_w700
            ),
            SizedBox(height: 20,),
            BestSellerItam()
          ],
        ),
      ),
    );
  }
}

class BestSellerItam extends StatelessWidget {
  const BestSellerItam({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 135,
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
        Container(
          margin: EdgeInsetsDirectional.only(top: 3),
          width: 170,
          child: const Text("Harry Potter and the Goblet of Fire",style:  ManagerStyles.textstyle20,
            overflow:TextOverflow.ellipsis ,
            maxLines: 2,
          ),
        )
      ],
    );
  }
}
