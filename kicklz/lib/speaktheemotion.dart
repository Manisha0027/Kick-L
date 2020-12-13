import 'package:flutter/material.dart';
import 'goalpad.dart';
import 'kicklhomepage.dart';

class Speaktheemotion extends StatefulWidget {
  @override
  _SpeaktheemotionState createState() => _SpeaktheemotionState();
}

class _SpeaktheemotionState extends State<Speaktheemotion> {

  
  @override
  final myController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speak The Emotion"),
        backgroundColor: Colors.black,
       
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
            Container(
              height: 490,
             color: Colors.white,
               child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    onTap: () {
                       Navigator.of(context).pop();
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {


        },
        child: (Icon(Icons.create)),
        backgroundColor: Colors.black,
      ),
       body: Container(
            color: Colors.white,
      child: new GridView.count(
          crossAxisCount: 3,
      
      
        
          

         
       ),
       ),
    );
  }
}