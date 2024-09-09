// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:overshare/firebase_options.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _obscure = true;
  bool _obscureConfirm = true;
  late TextEditingController _username;
  late TextEditingController _password;
  late TextEditingController _confirmPassword;
  bool _isFirebaseInitialized = false;

  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    setState(() {
      _isFirebaseInitialized = true;
    });
  }

  @override
  void initState() {
    _username = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    super.initState();

    //initialize firebase asynchronously
    _initializeFirebase();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isFirebaseInitialized) {
      return const Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      body: GestureDetector(
        onTap: //dismiss keyabord
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
                  width: 250,
                  height: 325,
                  child: SvgPicture.asset(
                    "assets/signup.svg",
                  ),
                ),

                // Content
                Container(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                    width: 500,
                    height: 471,
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Login Form
                          Text("Daftar Akun",
                              style: GoogleFonts.josefinSans(
                                textStyle: const TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),

                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child:
                                Text("Silahkan daftarkan akun terlebih dahulu.",
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

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: TextField(
                              controller: _confirmPassword,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _obscureConfirm = !_obscureConfirm;
                                        });
                                      },
                                      icon: _obscureConfirm
                                          ? const Icon(Icons.visibility_off)
                                          : const Icon(Icons.visibility)),
                                  border: const OutlineInputBorder(),
                                  hintText: "Konfirmasi Password"),
                              obscureText: _obscureConfirm,
                            ),
                          ),

                          SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    final username = _username.text.trim();
                                    final password = _password.text.trim();
                                    final confirmPassword =
                                        _confirmPassword.text.trim();

                                    if (password != confirmPassword) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content:
                                              Text("Password Doesn't Match"),
                                        ),
                                      );
                                      return;
                                    } else {
                                      try {
                                        await FirebaseAuth.instance
                                            .createUserWithEmailAndPassword(
                                                email: username,
                                                password: password);
                                        Navigator.pushNamed(
                                            context, '/landing');
                                      } on FirebaseAuthException catch (e) {
                                        if (e.code == "email-already-in-use") {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  content: Text(
                                                      "Email Already Used")));
                                        }
                                      }
                                    }
                                  },
                                  style: const ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          Color.fromARGB(255, 238, 238, 238))),
                                  child: Text(
                                    "Signup",
                                    style: GoogleFonts.josefinSans(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ))),

                          SizedBox(
                              width: double.infinity,
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/landing');
                                  },
                                  style: const ButtonStyle(
                                      overlayColor: WidgetStatePropertyAll(
                                          Colors.transparent),
                                      splashFactory: NoSplash.splashFactory,
                                      backgroundColor: WidgetStatePropertyAll(
                                          Colors.transparent)),
                                  child: Text(
                                    "Login",
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
