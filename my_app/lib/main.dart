import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/Pages/Splash.dart';

import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      title: 'GoalChart',
      home: const SplashPage(),
    );
  }
}
