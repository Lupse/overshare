import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:overshare/views/tugas1.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    '"Dejan kemarin belum sesipit ini sebelum mengenal mobile"',
                                    style: GoogleFonts.josefinSans(
                                        fontSize: 14,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black),
                                  ),
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
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    '"Mungkin aku memang sipit, tapi aplikasiku tidak seiprit"',
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.josefinSans(
                                        fontSize: 14,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Image(image: AssetImage("assets/dejan.jpeg")),
                      ],
                    ),
                  ),
                ),
              ),

              // CONTENT DIVIDER
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 5),
                        child: Divider(
                          thickness: 2,
                          endIndent: 100,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Text("ASSIGNMENT \nLISTS",
                              style: GoogleFonts.josefinSans(
                                textStyle: const TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Divider(
                          thickness: 2,
                          endIndent: 200,
                          color: Colors.black,
                        ),
                      ),

                      // TUGAS 1
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0, top: 18),
                        child: SizedBox(
                          height: 200,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                // TUGAS 1
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: TextButton(
                                    style: const ButtonStyle(
                                        overlayColor: WidgetStatePropertyAll(
                                            Colors.transparent)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Tugas1()));
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.black),
                                      child: Column(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(3.0),
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/dummy.png"),
                                              width: 150,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                              child: Center(
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                  color: Colors.black),
                                              child: Text(
                                                "TUGAS 1",
                                                style: GoogleFonts.josefinSans(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                // TUGAS 2
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: TextButton(
                                    style: const ButtonStyle(
                                        overlayColor: WidgetStatePropertyAll(
                                            Colors.transparent)),
                                    onPressed: () {},
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.black),
                                      child: Column(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(3.0),
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/dummy.png"),
                                              width: 150,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                              child: Center(
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                  color: Colors.black),
                                              child: Text(
                                                "TUGAS 2",
                                                style: GoogleFonts.josefinSans(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                // TUGAS 3
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: TextButton(
                                    style: const ButtonStyle(
                                        overlayColor: WidgetStatePropertyAll(
                                            Colors.transparent)),
                                    onPressed: () {},
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.black),
                                      child: Column(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(3.0),
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/dummy.png"),
                                              width: 150,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                              child: Center(
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                  color: Colors.black),
                                              child: Text(
                                                "TUGAS 3",
                                                style: GoogleFonts.josefinSans(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // LOGOUT
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 40),
                child: SizedBox(
                  width: 300,
                  child: OutlinedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      //back to login
                      Navigator.pushNamedAndRemoveUntil(
                          // ignore: use_build_context_synchronously
                          context, '/landing', (route) => false);
                    },
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 255, 70, 70)),
                        backgroundColor: Colors.black),
                    child: const Text(
                      "LOGOUT",
                      style: TextStyle(color: Color.fromARGB(255, 255, 70, 70)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
