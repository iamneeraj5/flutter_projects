// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:demo/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: GradientContainer(
        Color.fromARGB(255, 240, 152, 25),
        Color.fromARGB(255, 255, 81, 47),
      )),
      debugShowCheckedModeBanner: false,
    ),
  );
}
