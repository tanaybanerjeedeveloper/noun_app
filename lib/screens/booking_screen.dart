import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  //const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Center(
        child: Text(
          'Bookinf Screen',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
