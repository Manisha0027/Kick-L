import 'package:flutter/material.dart';
import 'dart:async';
import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:intl/intl.dart';

class Selectdatetime extends StatefulWidget {
  @override
  _SelectdatetimeState createState() => _SelectdatetimeState();
}

class _SelectdatetimeState extends State<Selectdatetime> {
  var count1 = false;
  var count2 = false;
  var count3 = false;
  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future<Null> _selectDate(BuildContext context) async {
    _date = new DateTime.now();
  
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2020));
    if (picked != null && picked != _date) {
    
      // print("Date Selected: ${_date.toString()}");
      setState(() {
        _date = picked;
      });

    }
  }
  

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (picked != null && picked != _time) {
      //print("Time Selected: ${_time.toString()}");
      setState(() {
        _time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Text("Select Date and Time"),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        child: Container(
          color: Colors.grey[300],
          height: 500.0,
          width: 370,
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
            //stops: [0.1, 0.5, 0.7, 0.9],
            // colors: [
            //   Colors.white12,
            //   Colors.yellow[700],
            //   Colors.yellow[600],
            //   Colors.yellow[400]
            // ],
          // )),

          //padding: EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              Text(
                "Date: $_date",
              
             //DateFormat("dd-mmm-yyy").format(now));
                style: TextStyle(
                  fontSize: 20.0,

                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                color: Colors.black,
                child: Text(
                  "Date",
                  style: TextStyle(fontSize: 30.0,
                  color: Colors.white                  ,),
                ),
                onPressed: () {
                  _selectDate(context);
                },
              ),
              Text("  "),
              Text(
                "Time: $_time",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                color: Colors.black,
                padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                child: Text(
                  "Time",
                  style: TextStyle(fontSize: 30.0,
                  color: Colors.white                  ,),
                ),
                onPressed: () {
                  _selectTime(context);
                },
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Image",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Switch(
                      value: count1,
                      onChanged: (value) {
                        setState(() {
                          count1 = value;
                        });
                      })
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Audio",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Switch(
                      value: count2,
                      onChanged: (value) {
                        setState(() {
                          count2 = value;
                        });
                      }),
                ],
              ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Quote",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Switch(
                          value: count3,
                          onChanged: (value) {
                            setState(() {
                              count3 = value;
                              
                            });
                          }),
                    ],
                  ),

                  //Navigation.of(context).pop();
                
              
            ],
          ),
        ),
      ),
    );
  }
}
