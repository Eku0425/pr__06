import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pr_6/view/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 10), () {
      Navigator.of(context).push(CustomPageRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 785,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/img/splashscreen.gif'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Planets',
                    textStyle: GoogleFonts.fahkwang(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                    colors: [
                      Colors.white,
                      Colors.blue,
                      Colors.white,
                    ],
                    textAlign: TextAlign.end,
                    speed: Duration(milliseconds: 2000),
                  ),
                ],
                totalRepeatCount: 2,
                pause: Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  CustomPageRoute()
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              Homescreen(),
          transitionDuration: Duration(milliseconds: 2000),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            // Define forward animation
            Animation<Offset> forwardAnimation = Tween<Offset>(
              begin: Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation);

            // Define reverse animation
            Animation<Offset> reverseAnimation = Tween<Offset>(
              begin: Offset(-1.0, 0.0),
              end: Offset.zero,
            ).animate(animation);

            return SlideTransition(
              position: animation.status == AnimationStatus.reverse
                  ? reverseAnimation
                  : forwardAnimation,
              child: child,
            );
          },
        );
}
