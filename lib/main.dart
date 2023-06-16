import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'screens/bio_app.dart';
//import 'widgets/custom_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BioApp(),
    );
  }
}

