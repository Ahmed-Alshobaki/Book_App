import 'package:book_app/core/constant/icon/icon_broken.dart';
import 'package:book_app/core/constant/resources/Manager_Style.dart';
import 'package:book_app/core/constant/resources/manager_assets.dart';
import 'package:book_app/core/constant/resources/manager_colors.dart';
import 'package:book_app/core/constant/resources/manager_fonts.dart';
import 'package:book_app/pages/Home/Home.dart';
import 'package:book_app/pages/Home/widgets/AppBar.dart';
import 'package:book_app/pages/Home/widgets/BestSellerItam.dart';
import 'package:book_app/pages/Home/widgets/itamList.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body:
      CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
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
                  Container(
                    margin: EdgeInsetsDirectional.only(start: 10),
                    child: const Text("Best Seller",
                        style: ManagerStyles.textstyle20_w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int i) {
                  return const Padding(
                    padding: EdgeInsetsDirectional.only(start: 10,bottom:10),
                    child: BestSellerItam(),
                  );
                },
                childCount: 10,
              ),

            )
          ],
        ),

    );
  }
}
