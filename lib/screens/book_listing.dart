import 'package:demo_api_fire_harsh/responsive.dart';
import 'package:demo_api_fire_harsh/widgets/book_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/listing_appbar.dart';

class BookListing extends StatefulWidget {
  const BookListing({super.key});

  @override
  State<BookListing> createState() => _BookListingState();
}

class _BookListingState extends State<BookListing> {
  List typeList = [
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
    0,
    1,
    1,
    0,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff43B888),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Icon(Icons.add),
      ),
      appBar: PreferredSize(
        preferredSize: Size(
          getWidth(context),
          0.1 * getHeight(context),
        ),
        child: ListingAppbar(),
      ),
      body: Container(
        height: getHeight(context),
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(
              top: 10 * getResponsive(context),
              bottom: 100 * getResponsive(context)),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0.05 * getWidth(context),
              mainAxisExtent: 0.35 * getHeight(context)),
          itemCount: typeList.length,
          itemBuilder: (context, index) {
            return BookCard(index: typeList[index]);
          },
        ),
      ),
    );
  }
}
