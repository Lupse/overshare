import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:overshare/firebase_options.dart';
import 'package:overshare/theme.dart';
import 'package:overshare/util.dart';
import 'package:overshare/views/intro.dart';
import 'package:overshare/views/landing.dart';
import 'package:overshare/views/signup.dart';
import 'package:overshare/views/tugas1/ganjilgenap.dart';
import 'package:overshare/views/tugas1/kalkulator.dart';
import 'package:overshare/views/tugas1/menu.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme =
        createTextTheme(context, "Montserrat", "Josefin Sans");
    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      // Routing
      routes: {
        // Homepage
        '/landing': (context) => const LandingPage(),
        '/signup': (context) => const SignupPage(),
        '/intro': (context) => const Intro(),
        // Tugas 1
        '/ganjilgenap': (context) => const Ganjilgenap(),
        '/menu1': (context) => const MenuTugas1(),
        '/kalkulator': (context) => const Kalkulator()
      },

      title: 'Overshare',
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = FirebaseAuth.instance.currentUser;
              if (user?.emailVerified ?? false) {
                const LandingPage();
              } else {
                const Text("Not Verified");
              }
              return const LandingPage();

            default:
              return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
