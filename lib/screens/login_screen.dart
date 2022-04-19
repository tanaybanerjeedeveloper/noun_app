import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../widgets/3rd_party_login_btn.dart';

class LoginScreen extends StatefulWidget {
  //LoginScreen({Key? key}) : super(key: key);
  static const id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _isElevated = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 120,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 45.0,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    const BoxShadow(
                        color: Color(0xff00ffba),
                        offset: Offset(2, 2),
                        blurRadius: 13,
                        spreadRadius: 0.2),
                    const BoxShadow(
                      color: Colors.black,
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: TextField(
                  onChanged: (value) {},
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: 'Phone/Email'),
                ),
              ),
              SizedBox(
                height: 55.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallButton('assets/images/fb.png'),
                  SizedBox(
                    width: 20.0,
                  ),
                  SmallButton('assets/images/gmail.png')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
