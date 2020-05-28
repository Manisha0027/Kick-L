import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kicklz/createNotes.dart';

class SpeakTheEmotion extends StatefulWidget {
  @override
  _SpeakTheEmotionState createState() => _SpeakTheEmotionState();
}

class _SpeakTheEmotionState extends State<SpeakTheEmotion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: Text("Speak The Emotion"),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 20.0,
        backgroundColor: Colors.teal[900],
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreateNotes()));
        },
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('notes').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return new Text('Loading...');
            default:
              return new ListView(
                children:
                    snapshot.data.documents.map((DocumentSnapshot document) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                    Card(
                        elevation: 10.0,
                        color: Colors.teal[500],
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                               context, MaterialPageRoute(builder: (context) => CreateNotes()));
                          },
                          child: new ListTile(
                            title: new Text(document['title'],style: TextStyle(fontSize: 18.0),),
                            subtitle: new Text(document['body']),
                          ),
                        ),
                      ),
                
                  );
                }).toList(),
              );
          }
        },
      ),
    );
  }
}
