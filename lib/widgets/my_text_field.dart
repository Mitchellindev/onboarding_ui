import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.black12,
          width: 1.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside),
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
    );

    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
        focusedBorder: border,
        enabledBorder: border,
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
