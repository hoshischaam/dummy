import 'package:flutter/material.dart';
//import 'package:wisatabandung/detail_screen.dart';
import 'package:wisatabandung/main_screen.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',

      theme: ThemeData(),

      home: const MainScreen(),
    );
  }
}
