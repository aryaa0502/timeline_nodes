import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final child;
  const EventCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: child,
    );
  }
}