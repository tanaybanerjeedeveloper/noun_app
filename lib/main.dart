import 'package:flutter/material.dart';
import './screens/welcome_screen.dart';
import './screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        // primarySwatch: Colors.blue,
        primaryColor: Color(0xff00ffba),
      ),
      home: WelcomeScreen(),
      routes: {
        SignupScreen.id: (context) => SignupScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
