// ignore_for_file: file_names, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:untangle/model/Myshape.dart';
import 'package:untangle/model/logindata.dart';

// void main(List<String> args) {
//   runApp(loginpage());
// }

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var number = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ClipPath(
              clipper: MyshapeClipper(),
              child: Container(
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue),
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 90,
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height / 9.25,
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 36,
                        fontWeight: FontWeight.w900),
                  )),
              Logindata(),
            ]),
          ],
        ),
      ),
    );
  }
}
