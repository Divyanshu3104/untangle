// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:untangle/model/Fppdata.dart';
import 'package:untangle/model/Myshape.dart';
import 'package:untangle/model/logindata.dart';

class Fppage extends StatefulWidget {
  const Fppage({super.key});

  @override
  State<Fppage> createState() => _FppageState();
}

class _FppageState extends State<Fppage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: false,
        body: Stack(
          children: [
            ClipPath(
              clipper: MyshapeClipper(),
              child: Container(
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green),
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 90,
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height / 9.25,
                  child: Text(
                    "Enter Details",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 36,
                        fontWeight: FontWeight.w900),
                  )),
              Fppdata(),
            ]),
          ],
        ),
      ),
    );
  }
}
