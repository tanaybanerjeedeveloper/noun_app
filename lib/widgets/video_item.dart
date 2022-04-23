import 'package:flutter/material.dart';

class VideoItem extends StatelessWidget {
  //const VideoItem({Key? key}) : supe//r(key: key);
  final String backgroundImgPath;
  VideoItem(this.backgroundImgPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 150,
      margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xff1f1f1f),
        image: DecorationImage(
          image: AssetImage(backgroundImgPath),
          fit: BoxFit.cover,
        ),
        //color: Colors.blue,
        boxShadow: [
          const BoxShadow(
            color: Color(0xff00ffba),
            offset: Offset(0, 0),
            blurRadius: 10,
            spreadRadius: 0.5,
          ),
          const BoxShadow(
            color: Colors.black,
            offset: Offset(-4, -4),
            blurRadius: 10,
          )
        ],
      ),
    );
  }
}
