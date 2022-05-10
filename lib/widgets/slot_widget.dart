import 'package:flutter/material.dart';
import '../screens/booking_details_screen.dart';
// import 'package:noun_customer_app/screens/payment_screen.dart';
// import '../screens/booking_screen.dart';

class SloWidget extends StatelessWidget {
  // const SloWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Theme.of(context).colorScheme.secondary,
          elevation: 20.0,
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BookingDetails(
                    date: '9/5/22',
                    stationName: 'Lightning Bolt',
                    time: '9:30 AM',
                  )),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('Time'),
              SizedBox(height: 10.0),
              Text(
                '9-9:30',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 30.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Slot 01'),
              SizedBox(height: 10.0),
              Image.asset(
                'assets/images/imagesGreen.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}
