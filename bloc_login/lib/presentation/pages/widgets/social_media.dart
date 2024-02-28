import 'package:flutter/material.dart';

class SocialMediaLogin extends StatelessWidget {
  const SocialMediaLogin({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
