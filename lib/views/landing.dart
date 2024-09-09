// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:overshare/firebase_options.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late final TextEditingController _username;
  late final TextEditingController _password;

  @override
  void initState() {
    _username = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onHorizontalDragUpdate: (details) {
      //   if (details.primaryDelta! > 10) {
      //     Navigator.pushNamed(context, '/signup');
      //   }
      // },
      // onTap: () {
      //   var f = FocusScope.of(context);
      //   if (!f.hasPrimaryFocus) {
      //     f.unfocus();
      //   }
      // },
      child: Scaffold(
        body: FutureBuilder(
            future: Firebase.initializeApp(
              options: DefaultFirebaseOptions.currentPlatform,
            ),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.done:
                  return SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          // Title
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                            child: Text("OVERSHARE",
                                style: GoogleFonts.josefinSans(
                                  textStyle: const TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ),

                          // Image
                          SizedBox(
                            width: 300,
                            height: 325,
                            child: SvgPicture.asset("assets/landingHeader.svg"),
                          ),

                          // Content
                          Container(
                              padding:
                                  const EdgeInsets.fromLTRB(30, 10, 30, 30),
                              width: 500,
                              height: 411,
                              child: SizedBox(
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Login Form
                                    Text("Selamat Datang!",
                                        style: GoogleFonts.josefinSans(
                                          textStyle: const TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),

                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Text(
                                          "Silahkan login terlebih dahulu.",
                                          style: GoogleFonts.josefinSans(
                                            textStyle: const TextStyle(
                                              fontSize: 18,
                                            ),
                                          )),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: TextField(
                                          controller: _username,
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Email")),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: TextField(
                                        controller: _password,
                                        decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "Password"),
                                        obscureText: true,
                                      ),
                                    ),

                                    //login button
                                    SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                            onPressed: () async {
                                              final email =
                                                  _username.text.trim();
                                              final password =
                                                  _password.text.trim();

                                              try {
                                                //attempt login
                                                await FirebaseAuth.instance
                                                    .signInWithEmailAndPassword(
                                                        email: email,
                                                        password: password);

                                                //login success
                                                Navigator.pushNamed(
                                                    context, '/intro');
                                              } on FirebaseAuthException catch (e) {
                                                if (e.code ==
                                                    'user-not-found') {
                                                  const Text("User Not Found");
                                                } else if (e.code ==
                                                    'wrong-password') {
                                                  const Text("Wrong Password");
                                                } else {
                                                  const Text("Error 101");
                                                }
                                              }
                                            },
                                            style: const ButtonStyle(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                        Color.fromARGB(255, 238,
                                                            238, 238))),
                                            child: Text(
                                              "Login",
                                              style: GoogleFonts.josefinSans(
                                                textStyle: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ))),

                                    //singup button
                                    SizedBox(
                                        width: double.infinity,
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, '/signup');
                                            },
                                            style: const ButtonStyle(
                                                overlayColor:
                                                    WidgetStatePropertyAll(
                                                        Colors.transparent),
                                                splashFactory:
                                                    NoSplash.splashFactory,
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                        Colors.transparent)),
                                            child: Text(
                                              "Sign Up",
                                              style: GoogleFonts.josefinSans(
                                                textStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            )))
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  );
                default:
                  return const Text("Loading");
              }
            }),
      ),
    );
  }
}
