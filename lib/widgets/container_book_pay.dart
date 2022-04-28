import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'small_container.dart';

class BookAndPayContainer extends StatefulWidget {
  @override
  State<BookAndPayContainer> createState() => _BookAndPayContainerState();
}

class _BookAndPayContainerState extends State<BookAndPayContainer> {
  //const BookAndPayContainer({Key? key}) : super(key: key);
  late final _time = DateFormat.Hm().format(DateTime.now());
  // TimeOfDay _currentTime = TimeOfDay(
  //     hour: int.parse(_time.split(":")[0]), minute: _time.split(":")[1]);

  TimeOfDay _stringToTimeOfDay(String tod) {
    final format = DateFormat.Hm();
    return TimeOfDay.fromDateTime(format.parse(tod));
  }

  @override
  Widget build(BuildContext context) {
    print('time: $_time'); //this is the current time

    print(_stringToTimeOfDay(_time));

    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: mediaQuery.height * 0.02),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color(0xff00ffba),
              offset: Offset(0, 0),
              blurRadius: 15,
              spreadRadius: 0.5,
            ),
            BoxShadow(
              color: Colors.black,
              offset: Offset(-4, -4),
              blurRadius: 10,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lightning Bolt Charging Station',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '4.5(8)',
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.02,
                    ),
                    Row(
                      children: [
                        SmallConatiner(
                          text: 'Cafe',
                          imgpath: 'assets/images/Group 1621.png',
                          color: Theme.of(context).colorScheme.secondary,
                          forContainerForBookAndPay: true,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        SmallConatiner(
                          text: 'Park',
                          imgpath: 'assets/images/tree.png',
                          color: Theme.of(context).colorScheme.secondary,
                          forContainerForBookAndPay: true,
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  width: mediaQuery.width * 0.3,
                  height: mediaQuery.height * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage('assets/images/back.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 2,
          ),
          SizedBox(
            height: mediaQuery.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Time',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () async {
                    showTimePicker(
                        context: context,
                        initialTime: _stringToTimeOfDay(_time));
                  },
                  child: Text(
                    _time,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                    elevation: 20.0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
