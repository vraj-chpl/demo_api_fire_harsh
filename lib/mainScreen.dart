import 'package:demo_api_fire_harsh/responsive.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  List screenName = [
    'Home Screen',
    'Challenges Screen',
    'Book Screen',
    'Fourth Screen'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getHeight(context),
            width: getWidth(context),
            child: ListView.builder(
              itemCount: screenName.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(screenName[index]),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
