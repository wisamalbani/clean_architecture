// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextFormFieldLogin extends StatelessWidget {
  final Widget suffix;
  final String lableText;
  final TextEditingController? controller;
  final bool? obscureText;
  const TextFormFieldLogin({
    super.key,
    required this.suffix,
    required this.lableText,
    this.controller,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      controller: controller,
      decoration: InputDecoration(
        labelText: lableText,
        suffixIcon: suffix,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
