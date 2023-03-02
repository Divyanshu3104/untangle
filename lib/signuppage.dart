// ignore_for_file: camel_case_types, duplicate_ignore, prefer_const_constructors, unnecessary_import, avoid_unnecessary_containers, unused_label, dead_code

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untangle/model/Myshape.dart';

// ignore: camel_case_types
class signuppage extends StatefulWidget {
  const signuppage({super.key});

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
            child: BottomAppBar(
              elevation: 0.0,
              color: Colors.transparent,
              child: SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, shape: StadiumBorder()),
                    onPressed: () {
                      //GET STARTED LOGIC
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ),
          ),
          resizeToAvoidBottomInset: true,
          body: Column(children: [
            ClipPath(
              clipper: MyshapeClipper(),
              child: Container(
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.deepPurpleAccent
                    // Color.fromARGB(255, 254, 168, 168)
                    ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height / 10.25,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                )),
            Expanded(
                child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                Column(
                  children: [
                    TextField(
                      cursorColor: Colors.deepPurpleAccent,
                      // Color.fromARGB(255, 254, 168, 168),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: 'First Name',
                          labelStyle: TextStyle(
                            color: Colors.deepPurpleAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.deepPurpleAccent,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                  width: 15.0, color: Colors.black))),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      cursorColor: Colors.deepPurpleAccent,
                      // Color.fromARGB(255, 254, 168, 168),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: 'Last Name',
                          labelStyle: TextStyle(
                            color: Colors.deepPurpleAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.deepPurpleAccent,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                  width: 15.0, color: Colors.black))),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      cursorColor: Colors.deepPurpleAccent,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.deepPurpleAccent,
                          ),
                          labelText: 'Phone No.',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.deepPurpleAccent,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                  width: 15.0, color: Colors.black))),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      cursorColor: Colors.deepPurpleAccent,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.deepPurpleAccent,
                          ),
                          labelText: 'Password',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.deepPurpleAccent,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                  width: 15.0, color: Colors.black))),
                    ),
                    SizedBox(height: 30),
                    Text('Gender',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w900)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox.fromSize(
                          size: Size(85, 85),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            elevation: 10,
                            // color: Color.fromARGB(255, 254, 168, 168),
                            child: InkWell(
                              splashColor: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  Icon(Icons.male_sharp),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: Size(85, 85),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            elevation: 10,
                            // color: Color.fromARGB(255, 254, 168, 168),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.grey,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  Icon(Icons.female_sharp),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: Size(85, 85),
                          child: Material(
                            elevation: 10,
                            borderRadius: BorderRadius.circular(20),
                            // color: Color.fromARGB(255, 254, 168, 168),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.grey,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  Icon(Icons.transgender_sharp),
                                  Text(
                                    "Other",
                                    style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ))
          ])),
    );
  }
}
