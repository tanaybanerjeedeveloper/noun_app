import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class BookingScreen extends StatelessWidget {
  //const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: Center(
        child: Text(
          'Bookinf Screen',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
