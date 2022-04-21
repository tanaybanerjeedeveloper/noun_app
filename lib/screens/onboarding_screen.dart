import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'intro_screen.dart';

class OnboardingScreen extends StatefulWidget {
  //OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              IntroScreen(
                  backgroundImg: 'assets/images/background.png',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eleifend, quam sed euismod vulputate, augue velit gravida purus, quis euismod velit risus at feli',
                  heroImg: 'assets/images/Group 1967.png',
                  title: 'Lorem ipsum'),
              IntroScreen(
                  backgroundImg: 'assets/images/background.png',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eleifend, quam sed euismod vulputate, augue velit gravida purus, quis euismod velit risus at feli',
                  heroImg: 'assets/images/EV 3.png',
                  title: 'Lorem ipsum'),
              IntroScreen(
                  backgroundImg: 'assets/images/background.png',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eleifend, quam sed euismod vulputate, augue velit gravida purus, quis euismod velit risus at feli',
                  heroImg: 'assets/images/EV 2.png',
                  title: 'Lorem ipsum'),
            ],
          ),
          Center(
            child: SmoothPageIndicator(controller: controller, count: 3),
          )
        ],
      ),
    );
  }
}
