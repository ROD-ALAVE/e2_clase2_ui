import 'package:e2_calse2_ui/screen/home2_screen.dart';
import 'package:e2_calse2_ui/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aprendiendo Widgets Flutter',
      debugShowCheckedModeBanner: false,  // Quita el banner de debug
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: Home2Screen(),
    );
  }
}