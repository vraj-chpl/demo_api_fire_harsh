import 'package:demo_api_fire_harsh/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'responsive.dart';

class ChallengesList extends StatelessWidget {
  ChallengesList({super.key});
  List imageList = [
    "assets/person1.png",
    "assets/person2.png",
    "assets/person3.png",
    "assets/person4.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.15 * getHeight(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20 * getResponsive(context)),
            child: Image.asset(
              "assets/img_2.jpg",
              height: 0.135 * getHeight(context),
              width: 0.29 * getWidth(context),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 0.035 * getWidth(context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8 * getResponsive(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(50 * getResponsive(context)),
                      child: Image.asset(
                        "assets/img_3.png",
                        height: 0.028 * getHeight(context),
                        width: 0.05 * getWidth(context),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 0.02 * getWidth(context),
                    ),
                    Text(
                      "Tabish Bin Tahir",
                      style: TextStyle(
                          fontSize: 15 * getResponsiveText(context),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 0.005 * getHeight(context),
                ),
                SizedBox(
                  width: 0.26 * getHeight(context),
                  child: Text(
                    "Challenge Details goes here.and this is line two.",
                    style: TextStyle(
                      fontSize: 16 * getResponsiveText(context),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Tagged",
                      style: TextStyle(
                        fontSize: 15.5 * getResponsiveText(context),
                      ),
                    ),
                    SizedBox(
                      width: 0.03 * getWidth(context),
                    ),
                    Container(
                      height: 0.04 * getHeight(context),
                      width: 0.4 * getWidth(context),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(3 * getResponsive(context)),
                            child: Align(
                              widthFactor: 0.5,
                              child: CircleAvatar(
                                radius: 17 * getResponsive(context),
                                backgroundColor: white,
                                child: CircleAvatar(
                                  radius: 15 * getResponsive(context),
                                  backgroundImage:
                                      AssetImage(imageList[index].toString()),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
