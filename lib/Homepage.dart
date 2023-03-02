// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untangle/Loginpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(255, 183, 77, 1),
          appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.orange[300],
              centerTitle: true,
              // leading: Image.asset('assets/icons/logo.png'),
              // ignore: prefer_const_literals_to_create_immutables
              title: Image.asset(
                'assets/icons/untanglelogo.png',
                height: 35,
                width: 200,
              )),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Title(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        'Meditating',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 45.43,
                            fontWeight: FontWeight.w900),
                      ),
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Center(child: Image.asset('assets/icons/center.png')),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: Text(
                    textAlign: TextAlign.center,
                    '''Self Conciousness or Meditation Can Improve Your Focus,Concentration and Calm Your Mind.''',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 19,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: StadiumBorder()),
                      onPressed: () {
                        //GET STARTED LOGIC
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginpage(),
                            ));
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
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
