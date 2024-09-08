import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.primaryDelta! > 10) {
          Navigator.pushNamed(context, '/login');
        }
      },
      onTap: () {
        var f = FocusScope.of(context);
        if (!f.hasPrimaryFocus) {
          f.unfocus();
        }
      },
      child: Scaffold(
        body: _landing(context),
      ),
    );
  }
}

Widget _landing(BuildContext context) {
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
              height: 467,
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
                      child: Text("Silahkan daftarkan akun terlebih dahulu.",
                          style: GoogleFonts.josefinSans(
                            textStyle: const TextStyle(
                              fontSize: 18,
                            ),
                          )),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Username")),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: "Password"),
                        obscureText: true,
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Konfirmasi Password"),
                        obscureText: true,
                      ),
                    ),

                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
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
                                overlayColor:
                                    WidgetStatePropertyAll(Colors.transparent),
                                splashFactory: NoSplash.splashFactory,
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.transparent)),
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
  );
}
