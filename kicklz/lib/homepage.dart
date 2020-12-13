

import 'package:flutter/material.dart';
import 'package:lkick/alarm_page.dart';
import 'package:lkick/clock_view.dart';
import 'package:intl/intl.dart';
import 'package:lkick/enum.dart';
import 'package:lkick/menu_info.dart';
import 'package:provider/provider.dart';
import 'data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('hh:mm').format(now);
    var formattedDate = DateFormat('EEE, d MMM').format(now);


        return Scaffold(
          backgroundColor: Colors.teal[700],
          body: Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: menuItems.map((currentMenuInfo) => buildMenuButton(currentMenuInfo)).toList(),
          ),
          VerticalDivider(
            color: Colors.white,
            width: 1,
          ),
          Expanded(
            child: Consumer<MenuInfo>(
              
                          builder: (BuildContext context, MenuInfo value, Widget child) { 
                            if(value.menuType != MenuType.clock) return Alarm_Page();
                            return Container(
                padding: EdgeInsets.symmetric(vertical: 64, horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Clock",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      formattedTime,
                      style: TextStyle(color: Colors.white, fontSize: 64),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      formattedDate,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Clock_View(size: 250)),
                  ],
                ),
              ); 

                           },
                        
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuButton(MenuInfo currentMenuInfo) {
    return Consumer<MenuInfo>(
          builder: (BuildContext context, MenuInfo value, Widget child) { 
            return FlatButton(
           padding: const EdgeInsets.symmetric(vertical: 16.0),
          color: currentMenuInfo.menuType == value.menuType ? Colors.teal[800] : Colors.transparent,
          onPressed: () {
            var menuInfo = Provider.of<MenuInfo>(context, listen: false);
            menuInfo.updateMenu(currentMenuInfo);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                currentMenuInfo.imageSource,
                scale: 1.5,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                currentMenuInfo.title ?? '',
                style: TextStyle(color: Colors.white, fontSize: 14),
              )
            ],
          ),
        
      );
           },
        
    );
  }
}
