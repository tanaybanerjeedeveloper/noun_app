import 'package:flutter/material.dart';
import 'dart:ui';
import '../utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  //HomeScreen({Key? key}) : super(key: key);
  static const id = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      // appBar: AppBar(
      //   leading: Icon(
      //     Icons.gps_fixed,
      //     size: 15.0,
      //   ),
      //   title: Text(
      //     '123/85 Park Street, Kolkata 700016',
      //     style: TextStyle(fontSize: 13.0),
      //   ),
      //   backgroundColor: Color(0xff11131b),
      //   elevation: 0,
      // ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            //backgroundColor: Color(0xff11131b),
            expandedHeight: mediaQuery.size.height * 0.6,
            leading: Icon(
              Icons.gps_fixed,
              size: 15.0,
            ),
            title: Text(
              '123/85 Park Street, Kolkata 700016',
              style: TextStyle(fontSize: 13.0),
            ),
          ),
        ],
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                  child: Text(
                    'Stations Near Me',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
