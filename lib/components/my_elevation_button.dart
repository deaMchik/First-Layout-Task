import 'package:flutter/material.dart';

class MyElevationButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData? firstIcon;
  final IconData? secondIcon;
  final Color? textColor;
  final Color? backgroundColor;
  final double borderRadius;
  const MyElevationButton({
    super.key,
    this.borderRadius = 12,
    this.textColor,
    this.firstIcon,
    this.secondIcon,
    this.backgroundColor = const Color(0xFF3A59A8),
    required this.onPressed,
    required this.text,
  });

  @override
  State<MyElevationButton> createState() => _MyElevationButtonState();
}

class _MyElevationButtonState extends State<MyElevationButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(52),
        elevation: 0,
        textStyle: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400, color: widget.textColor),
        backgroundColor: widget.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(widget.borderRadius), // <-- Radius
        ),
      ),
      child: Wrap(children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.firstIcon,
              color: widget.textColor,
              size: 19,
            ),
            const SizedBox(width: 8),
            Text(
              widget.text,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: widget.textColor),
            ),
            const SizedBox(width: 8),
            Icon(
              widget.secondIcon,
              color: widget.textColor,
              size: 19,
            ),
          ],
        ),
      ]),
    );
  }
}
