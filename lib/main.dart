// importing third party packages
import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 8, 42, 128),
          Color.fromARGB(255, 13, 9, 120),
        ),
      ),
    ),
  );
}
