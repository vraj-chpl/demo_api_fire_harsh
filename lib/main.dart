import 'dart:convert';
import 'dart:developer';
import 'package:demo_api_fire_harsh/challenges_page.dart';
import 'package:demo_api_fire_harsh/dashboard.dart';
import 'package:demo_api_fire_harsh/screens/book_listing.dart';
import 'package:demo_api_fire_harsh/screens/pricing.dart';
import 'package:demo_api_fire_harsh/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: ThemeData(
      textTheme: GoogleFonts.plusJakartaSansTextTheme()
    ),
    home:  BookListing(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String res = "init calling ";
  getData() async {
    await Future.delayed(Duration.zero).then(
      (value) async {
        var headers = {
          // 'Content-Type': 'application/json',
          
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9. eyJpYXQiOjE3NDA5OTQ5MzMsImlzcyI6IjE5Mi4xNjguNS40Nlwvd2hhdHNhcHBcLyIsImV4cCI6MTc0MTQyNjkzMywiYXV0aCI6IlJIVkdPRGx5TlVWTmNEUktNbmxOWlRsWlpEQnhkR1kzWnpOT2FrSmtObWxNWWtWR1pFdFBlRVo2TkQwPSIsImNvbXBhbnlfaWQiOiJlakpaY2podU5saFZlRWxKZUVzeE5YRXdkMWt4WnowOSIsImFkbWluX2lkIjoiZWpKWmNqaHVObGhWZUVsSmVFc3hOWEV3ZDFreFp6MDkifQ.SrjIHYSTEzQM-j6ioCsi8pMDqxsLzT91KO6-ddBHJ8w'
        };
        var req = await http.post(
            Uri.parse(
                'http://192.168.5.46/whatsapp/mobileApis/chatListController.php'
                // "https://demoadanisolar.chplgroup.org/mobileApis/workpermitcontroller.php"
                ),
            body: json.encode({'getChatList': 'getChatList', 'name': 'Jemi'}),
            headers: headers);
        print(req.body);
        res = req.body.toString();
        // var request = http.MultipartRequest(
        //     'POST',
        // Uri.parse(
        //     'http://192.168.5.46/whatsapp/mobileApis/chatListController.php'));
        // request.fields.addAll({'getChatList': 'getChatList', 'name': 'Jemi'});

        // request.headers.addAll(headers);
        // log(request.headers.toString(), name: "LOGGING HEADER");
        // http.StreamedResponse response = await request.send();

        // if (response.statusCode == 200) {
        //   res = await response.stream.bytesToString();
        //   print(res);
        // } else {
        //   res = "Error FROM API";
        //   print(response.reasonPhrase);
        // }
        setState(() {});
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                await getData();
              },
              child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Text("CLICK TO HIT API"))),
            ),
          ],
        ),
      ),
    );
  }
}
