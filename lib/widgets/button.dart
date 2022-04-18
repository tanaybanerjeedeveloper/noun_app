import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // const Button({Key? key}) : super(key: key);
  final String text;

  Button(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20.0,
              offset: Offset(0, 0),
              color: Color(0xff00ffba),
            ),
            BoxShadow(
              blurRadius: 30.0,
              offset: Offset(-15, -15),
              color: Colors.black,
            ),
            BoxShadow(
              blurRadius: 5.0,
              offset: Offset(-1, -1),
              color: Colors.black,
            )
          ]),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width * 0.60,
          height: MediaQuery.of(context).size.height * 0.065,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: const Color(0xff1f1f1f),
            borderRadius: BorderRadius.circular(28),
          ),
        ),
      ),
    );
  }
}
