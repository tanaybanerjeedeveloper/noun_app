import 'package:flutter/material.dart';

class SloWidget extends StatelessWidget {
  // const SloWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Theme.of(context).colorScheme.secondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('data1'),
          SizedBox(
            width: 10.0,
          ),
          Text('data2'),
        ],
      ),
    );
  }
}
