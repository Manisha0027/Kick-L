import 'package:flutter/material.dart';
import 'kicklhomepage.dart';
import 'goalpad.dart';
import 'selectdatetime.dart';
class Set extends StatefulWidget {
  @override
  _SetState createState() => _SetState();
}

class _SetState extends State<Set> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Set Your Day",
          //style: TextStyle( Colors.black),),
        ),
      ),
     
       body: 
       Container(
          //decoration: BoxDecoration(),

          // borderRadius: BorderRadius.circular(10.0),),
          height: (MediaQuery.of(context).size.height),
         width:MediaQuery.of(context).size.width,
          //color: Colors.black,
          //height: 490,
         color: Colors.white, 
        ),
      
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black,
              height: 150,
              width: 350,
              child:
                  //mainaxisalignment:MainAxisAlignment.center,
                  Padding(
                padding: EdgeInsets.all(16.0),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/46710/pexels-photo-46710.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                      radius: 30.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Shoot Your Setback",
                        style: TextStyle(color: Colors.white70, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                // padding: EdgeInsets.all(20.0) ,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                height: 490,
               
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Lazy()));
                      },
                      title: Text("Home"),
                      leading: Icon(Icons.home),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Goalpad()));
                      },
                      title: Text("Goalpad"),
                      leading: Icon(Icons.note_add),
                    ),
                    ListTile(
                      title: Text("About App"),
                      leading: Icon(Icons.touch_app),
                    ),
                    ListTile(
                      title: Text("Settings"),
                      leading: Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Selectdatetime()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }
}
