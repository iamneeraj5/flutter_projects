import 'package:flutter/material.dart';

class StyledTexts extends StatelessWidget {
  const StyledTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello World 123!!!',
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
