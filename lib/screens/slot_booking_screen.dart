import 'package:flutter/material.dart';
import 'package:noun_customer_app/utilities/constants.dart';
import '../widgets/slot_widget.dart';

class SlotBookingScreen extends StatefulWidget {
  //SlotBookingScreen({Key? key}) : super(key: key);
  static const id = 'slot_booking';

  @override
  State<SlotBookingScreen> createState() => _SlotBookingScreenState();
}

class _SlotBookingScreenState extends State<SlotBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: kScaffoldBackgroundColor,
        title: Text('Slot Booking'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SloWidget(),
                    SloWidget(),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) => Divider(
                    color: Theme.of(context).primaryColor,
                  ),
              itemCount: 3),
        ),
      ),
    );
  }
}
