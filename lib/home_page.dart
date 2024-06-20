import 'package:flutter/material.dart';
import 'package:slider_poc/components/my_timeline_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ?isCompleted;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 70.0),
        child: Row(
          children: [
            //case initiation
            InkWell(
              
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onTap: () {
          isCompleted = true;
        },
                child: MyTimelineTile(
              isFirst: true,
              isLast: false,
              isEdited: false,
              isCompleted: true,
              eventCard: Text('Case Initiation'),
            )),
            //customer acknowledgement
            MyTimelineTile(
              isFirst: false,
              isLast: false,
              isEdited: false,
              isCompleted: false,
              eventCard: Text('Customer Acknowledgement'),
            ),
            //upload documents
            MyTimelineTile(
              isFirst: false,
              isLast: false,
              isEdited: false,
              isCompleted: false,
              eventCard: Text('Upload Documents'),
            ),
            //request submission
            MyTimelineTile(
              isFirst: false,
              isLast: false,
              isEdited: false,
              isCompleted: false,
              eventCard: Text('Request Submission'),
            ),
            //triggers
            MyTimelineTile(
              isFirst: false,
              isLast: true,
              isEdited: false,
              isCompleted: false,
              eventCard: Text('Triggers'),
            ),
          ],
        ),
      ),
    );
  }
}
