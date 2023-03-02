// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:ui';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:untangle/Homepage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/icons/untanglelogo.png'),
      nextScreen: Homepage(),
      splashTransition: SplashTransition.scaleTransition,
      animationDuration: Duration(seconds: 1),
      duration: 600,
      curve: Curves.elasticInOut,
      backgroundColor: Color.fromRGBO(254, 251, 234, 1),
    );
  }
}
