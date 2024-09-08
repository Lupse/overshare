import 'package:flutter/material.dart';
import 'package:overshare/theme.dart';
import 'package:overshare/util.dart';
import 'package:overshare/views/landing.dart';
import 'package:overshare/views/signup.dart';

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
      initialRoute: "/landing",
      routes: {
        '/landing': (context) => const LandingPage(),
        '/signup': (context) => const SignupPage()
      },

      title: 'Overshare',
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const LandingPage(),
    );
  }
}
