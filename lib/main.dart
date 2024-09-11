import 'package:category_services/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' QR code scanner',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}


  

