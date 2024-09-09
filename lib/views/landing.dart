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
  bool _obscure = true;
  late final TextEditingController _username;
  late final TextEditingController _password;
  bool _isFirebaseInitialized = false;

  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    setState(() {
      _isFirebaseInitialized = true;
    });
  }


  @override
  void initState() {
    _username = TextEditingController();
    _password = TextEditingController();
    super.initState();

    //initialize firebase asynchronously
    _initializeFirebase();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isFirebaseInitialized) {
      return const Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      body: GestureDetector(
        onTap:
            //dismiss keyabord
            FocusScope.of(context).unfocus,
        child: SizedBox(
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
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
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
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Text("Silahkan login terlebih dahulu.",
                                style: GoogleFonts.josefinSans(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                  ),
                                )),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: TextField(
                                controller: _username,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Email")),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: TextField(
                              controller: _password,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _obscure = !_obscure;
                                        });
                                      },
                                      icon: _obscure
                                          ? const Icon(Icons.visibility_off)
                                          : const Icon(Icons.visibility)),
                                  border: const OutlineInputBorder(),
                                  hintText: "Password"),
                              obscureText: _obscure,
                            ),
                          ),

                          //login button
                          SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    final email = _username.text.trim();
                                    final password = _password.text.trim();

                                    try {
                                      //attempt login

                                      await FirebaseAuth.instance
                                          .signInWithEmailAndPassword(
                                              email: email, password: password);

                                      //login success
                                      Navigator.pushNamed(context, '/intro');
                                    } on FirebaseAuthException catch (e) {
                                      if (e.code == 'user-not-found') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content:
                                                    Text("User Not Found!")));
                                      } else if (e.code ==
                                          'invalid-credential') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content:
                                                    Text("Wrong Password!")));
                                      } else if (e.code == "channel-error") {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    "Please Insert Username & Password Correctly!")));
                                      } else if (e.code ==
                                          "too-many-requests") {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    "Too Many Request, Try Again Later ")));
                                      } else {
                                        const Text("Error 101");
                                      }
                                    }
                                  },
                                  style: const ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          Color.fromARGB(255, 238, 238, 238))),
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
                                    Navigator.pushNamed(context, '/signup');
                                  },
                                  style: const ButtonStyle(
                                      overlayColor: WidgetStatePropertyAll(
                                          Colors.transparent),
                                      splashFactory: NoSplash.splashFactory,
                                      backgroundColor: WidgetStatePropertyAll(
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
        ),
      ),
    );
  }
}
