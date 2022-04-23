import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  //const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Center(
        child: Text(
          'Gallery Screen',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
