import 'package:flutter/material.dart';

class SloWidget extends StatelessWidget {
  // const SloWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   decoration: BoxDecoration(boxShadow: [
    //     BoxShadow(
    //       color: Colors.black,
    //       offset: Offset(0, 0),
    //       blurRadius: 5,
    //     ),
    //   ]),
    //   color: Theme.of(context).colorScheme.secondary,
    //   padding: EdgeInsets.all(8.0),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Text('data1'),
    //       SizedBox(
    //         width: 10.0,
    //       ),
    //       Text('data2'),
    //     ],
    //   ),
    // );
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Theme.of(context).colorScheme.secondary,
          elevation: 20.0,
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
      onPressed: () {},
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
