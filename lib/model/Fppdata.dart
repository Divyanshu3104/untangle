import 'package:flutter/material.dart';

class Fppdata extends StatefulWidget {
  const Fppdata({super.key});

  @override
  State<Fppdata> createState() => _FppdataState();
}

class _FppdataState extends State<Fppdata> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide:
                              const BorderSide(width: 2, color: Colors.green)),
                      labelText: 'Phone No.',
                      labelStyle: const TextStyle(color: Colors.green),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(
                              width: 15.0, color: Colors.green))),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide:
                              const BorderSide(width: 2, color: Colors.green)),
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.green),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(
                              width: 15.0, color: Colors.green)),
                    )),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: const StadiumBorder()),
                        onPressed: () {
                          //LOGIN LOGIC

                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const ,
                          //     ));
                        },
                        child: const Text(
                          'Get OTP',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                ),
                const SizedBox(height: 55),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
