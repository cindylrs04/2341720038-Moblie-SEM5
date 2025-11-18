import 'package:flutter/material.dart';
import 'random_screen.dart'; // Langkah 9: Import random_screen.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC Random App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      // Langkah 7: Arahkan ke RandomScreen
      home: const RandomScreen(), 
    );
  }
}