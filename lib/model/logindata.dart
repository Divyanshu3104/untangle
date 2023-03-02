import 'package:flutter/material.dart';
import 'package:untangle/Fppage.dart';
import 'package:untangle/intotheapp.dart';
import 'package:untangle/signuppage.dart';

class Logindata extends StatefulWidget {
  const Logindata({super.key});

  @override
  State<Logindata> createState() => _LogindataState();
}

class _LogindataState extends State<Logindata> {
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
                              const BorderSide(width: 2, color: Colors.blue)),
                      labelText: 'Phone No.',
                      labelStyle: const TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(
                              width: 15.0, color: Colors.black))),
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
                              const BorderSide(width: 2, color: Colors.blue)),
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide:
                              const BorderSide(width: 15.0, color: Colors.red)),
                    )),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Fppage(),
                          ));
                    },
                    child: const Align(
                      alignment: Alignment.bottomRight,
                      child: Text('Forget Password',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 3,
                              fontSize: 14,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                    )),
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

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Intotheapp(),
                              ));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                ),
                const SizedBox(height: 55),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text("  Don't have a Account?",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w900)),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      //Signup Logic
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const signuppage(),
                          ));
                    },
                    child: const Text('Create Account',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            color: Colors.black,
                            fontSize: 18.59,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            decorationThickness: 3)))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
