import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'goalpad.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'kicklhomepage.dart';

class LinktheSnap extends StatefulWidget {
  @override
  _LinktheSnapState createState() => _LinktheSnapState();
}

class _LinktheSnapState extends State<LinktheSnap> {
  List<File> _listImages = List();

  Future getImage() async {
    File image;
    image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _listImages.add(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Link the Snap"),
      backgroundColor: Colors.black,),
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
          getImage();
        },
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: _listImages.length == 0
            ? Container()
            : GridView.count(
                crossAxisCount: 2,
                children: _listImages.map((_image) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.file(
                      _image,
                      height: 300.0,
                      width: 300.0,
                    ),
                  );
                }).toList()),
      ),
    );
  }
}
