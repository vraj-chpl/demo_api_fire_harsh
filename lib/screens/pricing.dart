import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';
import '../responsive.dart';

class Pricing extends StatefulWidget {
  const Pricing({super.key});

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 25 * getResponsive(context),
            horizontal: 15 * getResponsive(context),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildBackButton(context),
              SizedBox(
                height: 0.01 * getHeight(context),
              ),
              Center(
                child: Text(
                  'PRICING - UNITED STATES',
                  style: TextStyle(
                    fontSize: 24 * getResponsive(context),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 0.005 * getHeight(context),
              ),
              Center(
                child: Text(
                  'Legacy Plan',
                  style: TextStyle(
                    fontSize: 30 * getResponsive(context),
                    fontWeight: FontWeight.w600,
                    color: black,
                  ),
                ),
              ),
              SizedBox(
                height: 0.03 * getHeight(context),
              ),
              buildPricingCard(
                title: "START HERE(free trial)",
                price: "\$7.99",
                period: "/ month",
                title2: "Available for 2 weeks",
                description:
                    "Take a walk through your past to pull out the pillars that will shape your loved one's future.",
                title3: "Origin Story Includes",
                features: [
                  "Weekly Legacy Questions (70+)",
                  "Access to digitally store your memories",
                  "Send advice and gifts (triggered by dates)",
                  "Create Hardbound Book (extra cost to print)",
                  "300 GB of storage (more storage available)"
                ],
                buttonText: "Buy Now",
                color: primaryGreen,
                buttonColor: white,
                buttonTextColor: primaryGreen,
              ),
              SizedBox(height: 0.03 * getHeight(context)),
              buildPricingCard(
                title: "BUY BOOKS",
                price: "\$79.95",
                period: "/ month",
                description:
                    "Once subscribed to the monthly plan, answer our legacy questions and print them as books.",
                title3: "Hardbound Book Space (unlimited)",
                features: [
                  "Hardbound Book / Full Color",
                  "Size: 8.3 x 8.3 in",
                  "Paper: Mohawk Superfine Eggshell Ultra white",
                  "Binding: Perfect bound",
                  "Up to 300 pages"
                ],
                buttonText: "Buy Now",
                color: Colors.black,
                buttonColor: primaryGreen,
                buttonTextColor: white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildBackButton(BuildContext context) {
    return Container(
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
    );
  }

  Widget buildPricingCard({
    required String title,
    required String price,
    required String period,
    String? title2,
    required String description,
    required String title3,
    required List<String> features,
    required String buttonText,
    required Color color,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0 * getResponsive(context)),
      ),
      color: color,
      // elevation: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 22.0 * getResponsive(context),
          horizontal: 22.0 * getResponsive(context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.015 * getHeight(context),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: 8.0 * getResponsive(context),
                  right: 8.0 * getResponsive(context),
                  top: 4.0 * getResponsive(context),
                  bottom: 4.0 * getResponsive(context)),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius:
                    BorderRadius.circular(18.0 * getResponsive(context)),
                border: Border.all(color: white, width: 1),
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: white,
                  fontSize: 18 * getResponsive(context),
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 0.01 * getHeight(context),
            ),
            Row(
              children: [
                Text(
                  price,
                  // style: TextStyle(
                  //   color: Colors.white,
                  //   fontSize: 36 * getResponsive(context),
                  //   fontWeight: FontWeight.bold,
                  // ),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36 * getResponsive(context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(width: 4.0),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.0 * getResponsive(context),
                  ),
                  child: Text(
                    period,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22 * getResponsive(context),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.010 * getHeight(context),
            ),
            title2 == null
                ? SizedBox.shrink()
                : Text(
                    title2,
                    style: TextStyle(
                        color: white,
                        fontSize: 16 * getResponsive(context),
                        fontWeight: FontWeight.w600),
                  ),
            SizedBox(height: 0.017 * getHeight(context)),
            Text(
              description,
              style: TextStyle(
                  color: white, fontSize: 16 * getResponsive(context)),
            ),
            SizedBox(height: 0.022 * getHeight(context)),
            MySeparator(
              color: Colors.white38,
            ),
            SizedBox(height: 0.022 * getHeight(context)),
            Text(
              title3,
              style: TextStyle(
                  color: white,
                  fontSize: 20 * getResponsive(context),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 0.017 * getHeight(context),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: features
                  .map((feature) => Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0 * getResponsive(context)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            color == primaryGreen
                                ? Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: SvgPicture.asset(
                                      'assets/1.svg',
                                      height: 22 * getResponsive(context),
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: SvgPicture.asset(
                                      'assets/2.svg',
                                      height: 22 * getResponsive(context),
                                    ),
                                  ),
                            SizedBox(
                              width: 0.015 * getWidth(context),
                            ),
                            Expanded(
                              child: Text(
                                feature,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 20 * getResponsive(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
            SizedBox(height: 0.026 * getHeight(context)),
            Center(
              child: SizedBox(
                width: 0.8 * getWidth(context),
                height: 0.057 * getHeight(context),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0 * getResponsive(context),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    buttonText,
                    style: TextStyle(
                        color: buttonTextColor,
                        fontSize: 18 * getResponsive(context),
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.015 * getHeight(context),
            )
          ],
        ),
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({super.key, this.height = 1, this.color = Colors.black});
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (1.4 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
