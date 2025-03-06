import 'package:demo_api_fire_harsh/responsive.dart';
import 'package:demo_api_fire_harsh/widgets/listing_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookCard extends StatefulWidget {
  final int index;
  const BookCard({super.key, required this.index});

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.45 * getWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  widget.index == 0 ? 'assets/image1.png' : 'assets/image2.png',
                  fit: BoxFit.cover,
                  alignment: widget.index == 0
                      ? Alignment.topCenter
                      : Alignment.center,
                  width: 0.45 * getWidth(context),
                  height: 0.26 * getHeight(context),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/heart.png',
                    height: 30 * getResponsive(context),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0.01 * getHeight(context),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book Title",
                  style: TextStyle(
                      fontSize: 19 * getResponsiveText(context),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 0.002 * getHeight(context),
                ),
                Text(
                  "Tabish bin Tahir",
                  style: TextStyle(color: Color(0xff777779),
                   fontSize: 14 * getResponsiveText(context),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
