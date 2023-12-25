import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  final IconData next;

  const SettingWidget(this.next, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Icon(next),
        ],
      ),
    );
  }
}
