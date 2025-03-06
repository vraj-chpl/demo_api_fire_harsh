
import 'package:demo_api_fire_harsh/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;
  int selectedContainer = 0;
  void selectedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  PopupMenuItem<String> buildPopupMenuItem(
      {required BuildContext context,
      required String text,
      required VoidCallback onTap}) {
    return PopupMenuItem(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(fontSize: 15 * getResponsive(context)),
      ),
    );
  }

  List containerName = [
    {
      'name': 'Create a book',
      'subTitle':
          'Make a book with your \n favourite leagacy questions or \n create your own',
    },
    {
      'name': 'View all Books',
      'subTitle': 'Checkout all the family\n members you have added',
    },
  ];

  List images = [
    {'assets': 'assets/book.png'},
    {'assets': 'assets/book2.png'},
  ];

  List topicImages = [
    'assets/parent.png',
    'assets/girl.png',
    'assets/educational.png',
    'assets/parent.png'
  ];

  List topicnames = ['Parenting', 'Vocational', 'Educational', 'Parenting'];
  List weeklyLeagacyText = [
    'Family Exploration',
    'Mission Statement',
    'Educational Statement',
  ];
  List weeklyLeagacySubText = [
    'Ask three family members',
    'Create your own',
    '10 Questions',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      bottomNavigationBar: NavigationBar(
        indicatorShape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(30 * getResponsive(context))),
        backgroundColor: white,
        onDestinationSelected: selectedItem,
        indicatorColor: white,
        selectedIndex: selectedIndex,
        destinations: <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: selectedIndex == 0 ? primaryGreen : black,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/faq.png',
              color: selectedIndex == 1 ? primaryGreen : black,
            ),
            label: 'Questions',
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/community.png',
              color: selectedIndex == 2 ? primaryGreen : black,
            ),
            label: 'Community',
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/purchase.png',
              scale: 20,
              color: selectedIndex == 3 ? primaryGreen : black,
            ),
            label: 'Purchase',
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/image.png',
              scale: 2.9,
              color: selectedIndex == 4 ? primaryGreen : black,
            ),
            label: 'Me',
          ),
        ],
      ),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Image.asset(
                'assets/image1.jpg',
                scale: .25 * getResponsive(context),
                height: .26 * getHeight(context),
                width: getWidth(context),
                filterQuality: FilterQuality.high,
                alignment: Alignment.bottomLeft,
                fit: BoxFit.cover,
              ),
              Container(
                height: .26 * getHeight(context),
                width: getWidth(context),
                decoration: BoxDecoration(
                  color: black.withValues(alpha: 0.7),
                ),
              ),
              Positioned(
                top: 50 * getResponsive(context),
                right: 20 * getResponsive(context),
                child: Container(
                  height: 0.06 * getHeight(context),
                  width: 0.100 * getWidth(context),
                  decoration: BoxDecoration(
                      color: primaryGreen,
                      borderRadius:
                          BorderRadius.circular(50 * getResponsive(context))),
                  child: PopupMenuButton<String>(
                      color: white,
                      itemBuilder: (context) => [
                            buildPopupMenuItem(
                              text: "New Group",
                              onTap: () {},
                              context: context,
                            ),
                            buildPopupMenuItem(
                                text: "New Broadcast",
                                onTap: () {},
                                context: context),
                            buildPopupMenuItem(
                              text: "Linked devices",
                              context: context,
                              onTap: () {},
                            ),
                            buildPopupMenuItem(
                                context: context,
                                text: "Starred messages",
                                onTap: () {}),
                            buildPopupMenuItem(
                              context: context,
                              text: "Payment",
                              onTap: () {},
                            ),
                            buildPopupMenuItem(
                              context: context,
                              text: "Settings",
                              onTap: () {},
                            ),
                          ],
                      icon: Icon(
                        Icons.menu,
                        color: white,
                      )),
                ),
              ),
              Positioned(
                left: 20 * getResponsive(context),
                top: 120 * getResponsive(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: .03 * getHeight(context),
                      width: .325 * getWidth(context),
                      decoration: BoxDecoration(
                          color: primaryGreen,
                          borderRadius: BorderRadius.circular(
                              6 * getResponsive(context))),
                      child: Center(
                        child: Text(
                          'Daily Inspiration',
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17 * getResponsive(context)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: .006 * getHeight(context),
                    ),
                    Text(
                      'Spending Time With Family',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: white,
                          fontSize: 19 * getResponsive(context)),
                    )
                  ],
                ),
              ),
            ]),
            Container(
              // height: getHeight(context),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30 * getResponsive(context)),
                      topRight: Radius.circular(30 * getResponsive(context)))),
              child: Column(
                children: [
                  SizedBox(
                    height: .018 * getHeight(context),
                  ),
                  Text(
                    'WILLAM JAMES',
                    style: TextStyle(
                        fontSize: 20 * getResponsive(context),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15 * getResponsive(context),
                          fontWeight: FontWeight.w500),
                      'The greatest purpose of life is to live for \nsomething that last longer than you'),
                  SizedBox(
                    height: .018 * getHeight(context),
                  ),
                  // container for book
                  Container(
                    height: .3 * getHeight(context),
                    width: getWidth(context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: weeklyLeagacyText.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0 * getResponsive(context),
                                vertical: 10 * getResponsive(context)),
                            child: Stack(children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(width: .1),
                                    borderRadius: BorderRadius.circular(
                                        10 * getResponsive(context))),
                                child: Column(
                                  children: [
                                    Container(
                                      height: .15 * getHeight(context),
                                      width: .48 * getWidth(context),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                10 * getResponsive(context)),
                                            topRight: Radius.circular(
                                                10 * getResponsive(context))),
                                        child: Image.asset(
                                          images[index % 2]['assets'],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: .129 * getHeight(context),
                                      width: .48 * getWidth(context),
                                      decoration: BoxDecoration(
                                          color: greyColor,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(
                                                  10 * getResponsive(context)),
                                              bottomLeft: Radius.circular(10 *
                                                  getResponsive(context)))),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            8.0 * getResponsive(context)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: .005 * getHeight(context),
                                            ),
                                            Text(
                                              textAlign: TextAlign.center,
                                              containerName[index % 2]['name'],
                                              style: TextStyle(
                                                  color: black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18 *
                                                      getResponsive(
                                                          context)),
                                            ),
                                            SizedBox(
                                              height: .007 * getHeight(context),
                                            ),
                                            Text(
                                                textAlign: TextAlign.center,
                                                containerName[index % 2]
                                                    ['subTitle'],
                                                style: TextStyle(
                                                    color: greyTextColor,
                                                    fontSize: 14 *
                                                        getResponsive(
                                                            context)))
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]));
                      },
                    ),
                  ),
                  SizedBox(
                    height: .018 * getHeight(context),
                  ),
                  // questions by topic
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0 * getResponsive(context)),
                      child: Text(
                        'Questions by topic',
                        style: TextStyle(
                            fontSize: 20 * getResponsive(context),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: .018 * getHeight(context),
                  ),
                  GridView.builder(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10 * getResponsive(context),
                        vertical: 16 * getResponsive(context)),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: topicImages.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2.5,
                    ),
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(10),
                          //   child: Image.asset(
                          //     'assets/image1.jpg',
                          //     width: .23 * getWidth(context),
                          //     // height: .2 * getHeight(context),
                          //   ),
                          // ),
                          Container(
                            height: .065 * getHeight(context),
                            width: .15 * getWidth(context),
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(
                                    10 * getResponsive(context))),
                            child: Image.asset(
                              topicImages[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                topicnames[index],
                                style: TextStyle(
                                    color: blackTextColor,
                                    fontSize: 18 * getResponsive(context)),
                              ),
                              Text(
                                '30 Questions',
                                style: TextStyle(color: greyTextColor),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),

                  // popular questions
                  SizedBox(
                    height: .018 * getHeight(context),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10 * getResponsive(context)),
                      child: Text(
                        'Most Popular Questions',
                        style: TextStyle(
                            fontSize: 20 * getResponsive(context),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: .018 * getHeight(context),
                  ),
                  Container(
                    height: .18 * getHeight(context),
                    width: getWidth(context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: black
                    ),
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: topicnames.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0 * getResponsive(context),
                              vertical: 10 * getResponsive(context)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                height: .1 * getHeight(context),
                                width: .33 * getWidth(context),
                                // color: white,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    topicImages[index],
                                    scale: 4,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: .007 * getHeight(context),
                              ),
                              Text(
                                topicnames[index],
                                style: TextStyle(
                                    color: blackTextColor,
                                    fontSize: 18 * getResponsive(context)),
                              ),
                              Text(
                                '30 Questions',
                                style: TextStyle(color: greyTextColor),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  // get inspired by others
                  SizedBox(
                    height: .018 * getHeight(context),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10 * getResponsive(context)),
                      child: Text(
                        'Get Inspired By Others',
                        style: TextStyle(
                            fontSize: 20 * getResponsive(context),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: .018 * getHeight(context),
                  ),
                  Container(
                    height: .32 * getHeight(context),
                    width: getWidth(context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: weeklyLeagacyText.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0 * getResponsive(context),
                                vertical: 10 * getResponsive(context)),
                            child: Stack(children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(width: .1),
                                    borderRadius: BorderRadius.circular(
                                        10 * getResponsive(context))),
                                child: Column(
                                  children: [
                                    Container(
                                      height: .14 * getHeight(context),
                                      width: .55 * getWidth(context),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                        child: Image.asset(
                                          'assets/parent.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: .1 * getHeight(context),
                                      width: .55 * getWidth(context),
                                      decoration: BoxDecoration(
                                          color: white,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(
                                                  10 * getResponsive(context)),
                                              bottomLeft: Radius.circular(10 *
                                                  getResponsive(context)))),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            8.0 * getResponsive(context)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: .022 * getHeight(context),
                                            ),
                                            Text(
                                              'Parenting Inspiration',
                                              style: TextStyle(
                                                  color: black,
                                                  fontSize: 14 *
                                                      getResponsive(
                                                          context)),
                                            ),
                                            Text(
                                                'Questions for every parent needing help..',
                                                style: TextStyle(
                                                    color: black,
                                                    fontSize: 14 *
                                                        getResponsive(
                                                            context)))
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.favorite_border,
                                              color: primaryGreen,
                                            ),
                                            SizedBox(
                                              width: .003 * getWidth(context),
                                            ),
                                            Text(
                                              'Likes',
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: .035 * getWidth(context),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset('assets/Group.png'),
                                            SizedBox(
                                              width: .003 * getWidth(context),
                                            ),
                                            Text('Shares')
                                          ],
                                        ),
                                        SizedBox(
                                          width: .18 * getWidth(context),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: 112 * getResponsive(context),
                                  left: 17 * getResponsive(context),
                                  child: Image.asset(
                                    'assets/yellowperson.png',
                                    scale: 12 * getResponsive(context),
                                  ))
                            ]));
                      },
                    ),
                  ),
                  SizedBox(
                    height: .024 * getHeight(context),
                  ),
                  // weekly Legacy Challenges
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10 * getResponsive(context)),
                      child: Text(
                        'Weekly Legacy Challenges',
                        style: TextStyle(
                            fontSize: 20 * getResponsive(context),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: .018 * getHeight(context),
                  ),
                  Container(
                    height: .23 * getHeight(context),
                    width: getWidth(context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: weeklyLeagacyText.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0 * getResponsive(context),
                              vertical: 10 * getResponsive(context)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)),
                                height: .1 * getHeight(context),
                                width: .42 * getWidth(context),
                                // color: white,
                                child: ClipRRect(
                                  
                                  child: Image.asset(
                                    'assets/parent.png',
                                    // scale: 4,
                                    fit: BoxFit.fill,

                                  ),
                                ),
                              ),
                              SizedBox(
                                height: .007 * getHeight(context),
                              ),
                              Text(
                                weeklyLeagacyText[index],
                                style: TextStyle(
                                    fontSize: 18 * getResponsive(context)),
                              ),
                              Text(
                                weeklyLeagacySubText[index],
                                style: TextStyle(
                                    color: greyTextColor,
                                    fontSize: 14 * getResponsive(context)),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
