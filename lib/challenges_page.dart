import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'challenges_list.dart';
import 'colors.dart';
import 'responsive.dart';

class ChallengesPage extends StatefulWidget {
  ChallengesPage({super.key});

  @override
  State<ChallengesPage> createState() => _ChallengesPageState();
}

class _ChallengesPageState extends State<ChallengesPage> {
  List filterList = ["All", "Published", "Draft"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryGreen,
          foregroundColor: white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50 * getResponsive(context)),
          ),
          onPressed: () {},
          child: Center(
            child: Icon(
              Icons.add,
              color: white,
              size: 40 * getResponsive(context),
            ),
          ),
        ),
        // floatingActionButton: Container(
        //   height: 0.06 * getHeight(context),
        //   width: 0.13 * getWidth(context),
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(50 * getResponsive(context)),
        //       color: primaryGreen),
        //   child: Center(
        //     child: Icon(
        //       Icons.add,
        //       color: white,
        //       size: 40 * getResponsive(context),
        //     ),
        //   ),
        // ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: -20,
                          color: black,
                          blurRadius: 20,
                          offset: Offset(-10, -10))
                    ],
                  ),
                  child: Image.asset(
                    "assets/img_1.jpg",
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                    height: 0.2 * getHeight(context),
                    width: getWidth(context),
                  ),
                ),
                Container(
                  height: 0.2 * getHeight(context),
                  width: getWidth(context),
                  color: Colors.black.withValues(alpha: 0.55),
                ),
                Positioned(
                  top: 70 * getResponsive(context),
                  left: 20 * getResponsive(context),
                  child: Container(
                    height: 0.045 * getHeight(context),
                    width: 0.100 * getWidth(context),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(100 * getResponsive(context)),
                        color: primaryGreen),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: white,
                        size: 19,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 70 * getResponsive(context),
                  right: 20 * getResponsive(context),
                  child: Container(
                    height: 0.045 * getHeight(context),
                    width: 0.100 * getWidth(context),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(50 * getResponsive(context)),
                        color: primaryGreen),
                    child: Center(
                      child: Icon(
                        Icons.menu,
                        color: white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 140 * getResponsive(context),
                  left: 20 * getResponsive(context),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Challenges',
                          style: TextStyle(
                              fontSize: 25 * getResponsive(context),
                              color: white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 0.8 * getHeight(context),
              width: getWidth(context),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30 * getResponsive(context)),
                      topRight: Radius.circular(30 * getResponsive(context)))),
              child: Padding(
                padding: EdgeInsets.all(20 * getResponsive(context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 0.06 * getHeight(context),
                      width: 0.8 * getHeight(context),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(10 * getResponsive(context)),
                        color: grey,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10 * getResponsive(context)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/search.jpg',
                              // color: primaryGreen,
                            ),
                            SizedBox(
                              width: 0.02 * getWidth(context),
                            ),
                            Text(
                              'Search here',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16 * getResponsiveText(context)),
                            ),
                            Spacer(),
                            Image.asset('assets/filter.jpg'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.02 * getHeight(context),
                    ),
                    Container(
                      height: 0.04 * getHeight(context),
                      width: getWidth(context),
                      child: ListView.builder(
                        itemCount: filterList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2 * getResponsive(context)),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                height: 0.02 * getHeight(context),
                                decoration: BoxDecoration(
                                  color: selectedIndex == index
                                      ? primaryGreen
                                      : grey,
                                  borderRadius: BorderRadius.circular(
                                    20 * getResponsive(context),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15 * getResponsive(context)),
                                  child: Center(
                                    child: Text(
                                      filterList[index],
                                      style: TextStyle(
                                        fontSize: 16 * getResponsiveText(context),
                                        color: selectedIndex == index
                                            ? white
                                            : primaryGreen,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 0.01 * getHeight(context),
                    ),
                    Container(
                      height: 0.58 * getHeight(context),
                      width: getWidth(context),
                      child: ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return ChallengesList();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
