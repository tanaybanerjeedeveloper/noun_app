import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class GalleryScreen extends StatelessWidget {
  //const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: Center(
        child: Text(
          'Gallery Screen',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
