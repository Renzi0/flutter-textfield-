import 'package:flutter/material.dart';
import 'sampletextfield.dart';  // ✅ make sure this import is correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Session 3 Demo',
      home: const SampleTextField(), // ✅ set SampleTextField as the home
    );
  }
}
