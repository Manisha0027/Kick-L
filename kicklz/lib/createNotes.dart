import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CreateNotes extends StatefulWidget {
  @override
  _CreateNotesState createState() => _CreateNotesState();
}

class _CreateNotesState extends State<CreateNotes> {
  final title = new TextEditingController();
  final body = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[700],
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      
                        color: Colors.teal[700],
                        onPressed: () {
                          submit();
                        },
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                     style: TextStyle(color: Colors.white),
                  maxLines: 2,
                   cursorColor: Colors.black,
                
                  controller: title,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.teal[700], width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.teal[700], width: 2.0),
                    ),
                    hintText: 'Title',
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 15.0)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
              cursorColor: Colors.black,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: body,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.teal[700], width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.teal[700], width: 2.0),
                    ),
                    hintText: 'body',
                     hintStyle: TextStyle(color: Colors.grey,fontSize: 15.0)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  submit() async {
    setState(() {});

    await Firestore.instance
        .collection('notes')
        .document()
        .setData({'title': title.text, 'body': body.text});
    Navigator.pop(context);
  }
}
