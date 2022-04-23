import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  //const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Center(
        child: Text(
          'Notifications Screen',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
