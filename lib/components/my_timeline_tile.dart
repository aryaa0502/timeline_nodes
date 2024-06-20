import 'package:flutter/material.dart';
import 'package:slider_poc/components/event_card.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
   bool isEdited;
   bool isCompleted;
  final eventCard;
  MyTimelineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isEdited,
      required this.isCompleted,
      required this.eventCard});
//circle_outlined for not compl, circle_rounded for compl
  Color pickColour(){
     if(isEdited == true){
             return  Colors.orange;
            } else if(isCompleted == true){
              return  Colors.green;
            }else {
              return  Colors.grey;
            }
  }
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
          color: pickColour(),
          // isEdited ? Colors.orange : Colors.grey,
        ),
        indicatorStyle: IndicatorStyle(
            // width: 40,
            color: pickColour(),
            // isEdited ? Colors.orange : Colors.grey,
            iconStyle: isEdited
                ? IconStyle(
                    iconData: Icons.circle_outlined, color: Colors.white)
                : IconStyle(
                    iconData: Icons.circle_rounded, color: Colors.white)),
        endChild: EventCard(child: eventCard),
      ),
    );
  }
}
