import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../widgets/small_container.dart';
import '../widgets/btn_screen_details.dart';

class StationDetailsScreen extends StatefulWidget {
  //const StationDetailsScreen({Key? key}) : super(key: key);
  static const id = 'station_details_screen';

  @override
  State<StationDetailsScreen> createState() => _StationDetailsScreenState();
}

class _StationDetailsScreenState extends State<StationDetailsScreen> {
  var _isElevated = true;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: mediaQuery.size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/back.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lightning Bolt',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Text(
                        'Open now',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  SizedBox(
                    height: mediaQuery.size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: mediaQuery.size.width * 0.02,
                      ),
                      Text('4.5(8)'),
                    ],
                  ),
                  SizedBox(
                    height: mediaQuery.size.height * 0.05,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          // height: 30.0,
                          //color: Colors.amber,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        '81/2 Salt Lake, Sector V, Kolkata-700052',
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: mediaQuery.size.height * 0.05,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.,
                                children: [
                                  SmallConatiner(
                                      text: 'Cafe',
                                      imgpath: 'assets/images/Group 1621.png'),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  SmallConatiner(
                                      text: 'Park',
                                      imgpath: 'assets/images/tree.png'),
                                ],
                              ),
                              SizedBox(
                                height: mediaQuery.size.height * 0.05,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 30.0),
                                decoration: BoxDecoration(
                                    color: kScaffoldBackgroundColor,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xff1b1e2b),
                                        offset: Offset(-5, -5),
                                        blurRadius: 5,
                                      ),
                                      BoxShadow(
                                        color: Color(0xff07080b),
                                        offset: Offset(5, 5),
                                        blurRadius: 5,
                                      ),
                                    ]),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Costing',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '50/Kwh',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Slot Available',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '5',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // Flexible(
                      //   flex: 2,
                      //   child: Container(
                      //     height: 30.0,
                      //     color: Colors.blue,
                      //   ),
                      // ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          // color: Colors.blue,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset('assets/images/map.png'),
                              SizedBox(
                                height: mediaQuery.size.height * 0.02,
                              ),
                              //Button('Location', () {})
                              Listener(
                                  onPointerUp: (_) =>
                                      setState(() => _isElevated = true),
                                  onPointerDown: (_) {
                                    setState(() {
                                      _isElevated = false;

                                      //_isElevated = false;
                                    });
                                    () {};
                                    // Timer(const Duration(milliseconds: 10000), widget.onPressed());
                                  },
                                  child: StationDetailsScreenButton(
                                    onPressed: () {},
                                    text: 'Locate',
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: mediaQuery.size.height * 0.08,
                  ),
                  // StationDetailsScreenButton(
                  //   onPressed: () {},
                  //   text: 'BOOK',
                  // )
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 150.0),
                      ),
                      onPressed: () {},
                      child: Text(
                        'BOOK',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15.0),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
