// lib/main.dart
import 'package:flutter/material.dart';
import 'screen/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chateo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 24,
            color: Colors.black87,
          ),
        ),
      ),
      home: const HomePage(), // Using the separated home page
    );
  }
}