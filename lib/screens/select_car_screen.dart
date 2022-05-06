import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noun_customer_app/utilities/constants.dart';
import '../widgets/dropdown_widget.dart';
import '../widgets/button.dart';
import '../widgets/bottom_navigation_bar.dart';

class SelectCarScreen extends StatefulWidget {
  // SelectCarScreen({Key? key}) : super(key: key);
  static const id = 'select_car_screen';

  @override
  State<SelectCarScreen> createState() => _SelectCarScreenState();
}

class _SelectCarScreenState extends State<SelectCarScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: mediaQuery.height * 0.2,
                  child: Center(
                      child: Text(
                    'Select Your Car',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
                ),
                Image.asset(
                  'assets/images/demo_car.png',
                ),
                SizedBox(
                  height: mediaQuery.height * 0.08,
                ),
                DropDownWidget(
                  dataList: ['BMW', 'Porsche', 'Audi', 'Lamborghini'],
                  text: 'Brand',
                ),
                SizedBox(
                  height: mediaQuery.height * 0.06,
                ),
                DropDownWidget(
                  dataList: ['BMW', 'Porsche', 'Audi', 'Lamborghini'],
                  text: 'Model',
                ),
                SizedBox(
                  height: mediaQuery.height * 0.06,
                ),
                DropDownWidget(
                  dataList: ['BMW', 'Porsche', 'Audi', 'Lamborghini'],
                  text: 'Model',
                ),
                SizedBox(
                  height: mediaQuery.height * 0.09,
                ),
                Button('Save', () {
                  Timer(const Duration(milliseconds: 500),
                      () => Navigator.pushNamed(context, BottomNavigation.id));
                }),
                SizedBox(
                  height: mediaQuery.height * 0.06,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
