import 'package:flutter/material.dart';

class MyTextButton extends StatefulWidget {
  final String textButton;
  final VoidCallback onPressed;
  const MyTextButton({
    super.key,
    required this.onPressed,
    required this.textButton,
  });

  @override
  State<MyTextButton> createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Text(
        widget.textButton,
        style: const TextStyle(fontSize: 12, color: Color(0xFF5162FF)),
      ),
    );
  }
}
