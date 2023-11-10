import 'package:flutter/material.dart';
import 'package:quiz_app/screens/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 38, 6, 94),
                Color.fromARGB(255, 116, 61, 212)
              ],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
