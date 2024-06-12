import 'package:flutter/material.dart';
import 'package:slider_poc/components/my_timeline_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70.0),
        child: Row(
          children: const [
            //case initiation
            MyTimelineTile(isFirst: true, isLast: false, isPast: true, eventCard: Text('Case Initiation'),),
            //customer acknowledgement
            MyTimelineTile(isFirst: false, isLast: false, isPast: true, eventCard: Text('Customer Acknowledgement'),),
            //upload documents
            MyTimelineTile(isFirst: false, isLast: false, isPast: true, eventCard: Text('Upload Documents'),),
            //request submission
            MyTimelineTile(isFirst: false, isLast: false, isPast: false, eventCard: Text('Request Submission'),),
            //triggers
            MyTimelineTile(isFirst: false, isLast: true, isPast: false, eventCard: Text('Triggers'),),
          ],
        ),
      ),
    );
  }
}