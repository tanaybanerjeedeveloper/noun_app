import 'package:flutter/material.dart';
import 'package:noun_customer_app/utilities/constants.dart';

class SmallConatiner extends StatelessWidget {
  //const SmallConatiner({Key? key}) : super(key: key);
  final String text;
  final String imgpath;
  SmallConatiner({required this.text, required this.imgpath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
      decoration: BoxDecoration(
          color: kScaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Color(0xff1b1e2b),
              offset: Offset(-5, -5),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Color(0xff07080b),
              offset: Offset(5, 5),
              blurRadius: 5,
            ),
          ]),
      child: Row(
        children: [
          Image.asset(imgpath),
          SizedBox(
            width: 5.0,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
