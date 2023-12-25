import 'package:flutter/material.dart';

class MyEventCard extends StatelessWidget {
  final String firstText;
  final String secondText;
  const MyEventCard({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            firstText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF080808),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            secondText,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Color(0xFFBABABA),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
