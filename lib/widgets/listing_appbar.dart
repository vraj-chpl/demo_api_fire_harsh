import 'dart:io';

import 'package:demo_api_fire_harsh/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListingAppbar extends StatelessWidget {
  const ListingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 200,
      child: Column(
        children: [
          SizedBox(
            height: kIsWeb
                ? 15 * getResponsive(context)
                : 55 * getResponsive(context),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Color(0xff43B888),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 0.05 * getHeight(context),
                      width: 0.05 * getHeight(context),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 0.02 * getHeight(context),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.05 * getWidth(context),
                    ),
                    Text(
                      "Books",
                      style: TextStyle(
                          fontSize: 28 * getResponsiveText(context),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Color(0xff43B888),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  height: 0.05 * getHeight(context),
                  width: 0.05 * getHeight(context),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 0.02 * getHeight(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
