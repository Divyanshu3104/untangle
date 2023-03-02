// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Intotheapp extends StatefulWidget {
  const Intotheapp({super.key});

  @override
  State<Intotheapp> createState() => _IntotheappState();
}

class _IntotheappState extends State<Intotheapp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            centerTitle: true,
            title: Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                Image.asset(
                  'assets/icons/untanglelogo.png',
                  height: 35,
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Image.asset(
                    "assets/icons/usericon.png",
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),
          ),
          body: Center(
            child: Text(
              "UNDER CONSTRUCTION!!",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w900),
            ),
          )
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Padding(
          //     padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
          //     child: Row(
          //       children: [
          //         Container(
          //           height: 80,
          //           width: 80,
          //           decoration: BoxDecoration(
          //               border: Border.all(
          //                 width: 1,
          //                 color: Colors.grey.shade500,
          //               ),
          //               borderRadius: BorderRadius.circular(100)),
          //           child: Padding(
          //             padding: const EdgeInsets.all(19.0),
          //             child: Text(
          //               "Hello",
          //               style: TextStyle(
          //                   fontFamily: "poppins",
          //                   fontSize: 12,
          //                   fontWeight: FontWeight.w500),
          //             ),
          //           ),
          //         ),
          //      ],
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
