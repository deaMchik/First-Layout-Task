import 'package:flutter/material.dart';
import 'package:task_app/components/my_eventcard.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool isFisrt;
  final bool isLast;
  final bool isPast;
  final Color lineColor;
  final Color circleColor;
  final Color iconColor;
  final IconData icon;

  const MyTimeLineTile({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.isFisrt,
    required this.isLast,
    required this.isPast,
    required this.icon,
    required this.lineColor,
    required this.circleColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TimelineTile(
        axis: TimelineAxis.vertical,
        isFirst: isFisrt,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: lineColor,
          thickness: 2,
        ),
        indicatorStyle: IndicatorStyle(
          iconStyle: IconStyle(
            iconData: icon,
            color: iconColor,
          ),
          width: 36,
          height: 36,
          color: circleColor,
        ),
        endChild: MyEventCard(
          firstText: firstText,
          secondText: secondText,
        ),
      ),
    );
  }
}
