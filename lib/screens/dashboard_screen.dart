import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  //const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Center(
        child: Text(
          'Dashboard Screen',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
