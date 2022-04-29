import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class PaymentScreen extends StatelessWidget {
  //const PaymentScreen({Key? key}) : super(key: key);
  static const id = 'payment_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Payment',
          style: TextStyle(fontSize: 20.0),
        ),
        centerTitle: true,
      ),
    );
  }
}
