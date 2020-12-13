import 'package:flutter/material.dart';

import 'alarmcolumnpage.dart';

class Goalpad extends StatefulWidget {
  @override
  _GoalpadState createState() => _GoalpadState();
}

class _GoalpadState extends State<Goalpad> {
  @override
  final myController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.black,
        title: Text("GoalPad"),
        
          actions: <Widget>[
            Icon(Icons.check),
          ],
        
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          maxLines: 10,
          controller: myController,
          decoration: InputDecoration.collapsed(
            hintText: "Write something!!",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}