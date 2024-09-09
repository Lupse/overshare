import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Kolom Utama
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 20),
              child: Text("THE CREATOR",
                  style: GoogleFonts.josefinSans(
                    textStyle: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ),

            // TITLE CONTENT
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var letter in 'LUTHFI'.split(''))
                      Text(
                        letter,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 170,
                      height: 170,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 220, 220, 220),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Image(
                      image: AssetImage("assets/profile.png"),
                      width: 170,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var letter in 'DEJAN'.split(''))
                      Text(
                        letter,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                  ],
                )
              ],
            ),

            // LUTHFI PROFILE'S
            Padding(
              padding: const EdgeInsets.only(top: 50.0, right: 50),
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: SizedBox(
                  width: 400,
                  height: 150,
                  child: Row(
                    children: [
                      const Image(image: AssetImage("assets/luthfi.jpeg")),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "LUTHFI ARDINATA FIRMAN",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "124220140",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 14, color: Colors.black),
                              ),
                              Text(
                                "Frontend",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black),
                              ),
                              Text(
                                '"Mataku sipit tidak dapat Melihat apa apa"',
                                style: GoogleFonts.josefinSans(
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // DEJAN PROFILE'S
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 50),
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: SizedBox(
                  width: 400,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                child: Text(
                                  "DEJAN AZUL ULTAMAR",
                                  style: GoogleFonts.josefinSans(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Text(
                                "124220138",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 14, color: Colors.black),
                              ),
                              Text(
                                "Backend",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black),
                              ),
                              Text(
                                '"Mataku sipit tidak dapat Melihat apa apa"',
                                textAlign: TextAlign.end,
                                style: GoogleFonts.josefinSans(
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Image(image: AssetImage("assets/dejan.jpeg"))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
