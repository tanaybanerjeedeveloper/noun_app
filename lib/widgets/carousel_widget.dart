import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/carousel_item.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    Key? key,
    required this.mediaQuery,
    required this.text,
  }) : super(key: key);

  final MediaQueryData mediaQuery;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (context, index, realIndex) {
              return CarouselItem();
            },
            options: CarouselOptions(
              height: mediaQuery.size.height * 0.38,
              enlargeCenterPage: true,
            ))
      ],
    );
  }
}
