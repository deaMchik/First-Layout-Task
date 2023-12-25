// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

class MyTextView extends StatelessWidget {
  final String labelText;
  final String prefixText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final inputType;
  final maxLength;
  final maxLines;

  const MyTextView({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.labelText,
    required this.prefixText,
    required this.inputType,
    required this.maxLength,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      maxLines: maxLines,
      maxLength: maxLength,
      obscureText: false,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        alignLabelWithHint: true,
        counterText: "",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xBBBBBBBB)),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xBBBBBBBB)),
          borderRadius: BorderRadius.circular(12.0),
        ),
        labelStyle: const TextStyle(fontSize: 12, color: Color(0xBBBBBBBB)),
        prefixText: prefixText,
        labelText: labelText,
      ),
    );
  }
}
