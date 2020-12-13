import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lkick/data.dart';

import 'data.dart';

class Alarm_Page extends StatefulWidget {
  @override
  _Alarm_PageState createState() => _Alarm_PageState();
}

class _Alarm_PageState extends State<Alarm_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Alarm',
            style: TextStyle(
                fontFamily: 'Courgette', color: Colors.white, fontSize: 30),
          ),
          Expanded(
            child: ListView(
                children: alarms.map<Widget>((alarm) {
              return Container(
                margin: const EdgeInsets.only(bottom: 32),
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:Colors.black26,
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(4, 4) ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(children: <Widget>[
                            Icon(
                        Icons.label,
                        color: Colors.black,
                        size: 24,
                      ),
                      SizedBox(width: 8,),
                      Text('Study',
                      style: TextStyle(color: Colors.black,fontSize: 18),),

                        ],),
                    
                      Switch(
                        onChanged: (bool value){},
                        value: true,
                        activeColor: Colors.black,
                      )
                    ],),
                  Text('Mon - Fri',
                      style: TextStyle(color: Colors.black,fontSize: 18),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('07:00',
                          style: TextStyle(color: Colors.black,fontWeight:FontWeight.w700,fontSize: 24 ),),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 30,
                          )
                        ],
                      ),
                  ],
                ),
              );
            }).followedBy([
              DottedBorder(
                strokeWidth: 2,
                color: Colors.white,
                borderType: BorderType.RRect,
                radius: Radius.circular(24),
                dashPattern: [5,4],
                   child: Container(
                     width: double.infinity,
                  decoration: BoxDecoration(
                     color: Colors.teal,
                     borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                 
                  
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                    onPressed: (){},
                      child: Column(
                      
                      children: <Widget>[
                        Icon(Icons.add_alarm,
                        color: Colors.white,),
                        SizedBox(height: 8,),
                        Text('Add Alarm',
                        style:TextStyle(color:Colors.white),)
                        
                      ],
                    ),
                  ),
                ),
              )
              
            ]).toList()),
          ),
        ],
      ),
    );
  }
}
