import 'package:flutter/material.dart';

class OTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const OTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade500)),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const PasswordField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            hintText: hintText,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility_off,
              ),
            ),
            hintStyle: TextStyle(color: Colors.grey.shade500)),
      ),
    );
  }
}
