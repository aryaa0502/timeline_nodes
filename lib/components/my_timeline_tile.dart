import 'package:flutter/material.dart';
import 'package:slider_poc/components/event_card.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  const MyTimelineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.eventCard});
//circle_outlined for not compl, circle_rounded for compl
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.195,
      child: TimelineTile(
        alignment: TimelineAlign.start,
        axis: TimelineAxis.horizontal,
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: isPast ? Colors.orange : Colors.grey,
        ),
        // afterLineStyle: LineStyle(
        //   color: isPast ? Colors.grey : Colors.grey,
        // ),
        indicatorStyle: IndicatorStyle(
            // width: 40,
            color: isPast ? Colors.orange : Colors.grey,
            iconStyle: isPast
                ? IconStyle(
                    iconData: Icons.circle_outlined, color: Colors.white)
                : IconStyle(
                    iconData: Icons.circle_rounded, color: Colors.white)),
        endChild: EventCard(child: eventCard),
      ),
    );
  }
}
