// ignore_for_file: unused_import, depend_on_referenced_packages, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untangle/Loginpage.dart';
import 'package:untangle/Splashscreen.dart';
import 'package:untangle/signuppage.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        title: 'Untangle',
        home: Splashscreen()));
    //myapp()
  }
}
