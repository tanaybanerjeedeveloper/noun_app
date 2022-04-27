import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class DashboardScreen extends StatelessWidget {
  //const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: Center(
        child: Text(
          'Dashboard Screen',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
