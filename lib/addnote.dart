import 'package:flutter/material.dart';
import 'package:notes/notes.dart';
import 'package:notes/notecard.dart';
import 'package:notes/homescreen.dart';

class AddNote extends StatefulWidget {

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Expanded(child: Text("Notes")),
            FlatButton.icon(
                onPressed:(){} ,
                icon: Icon(Icons.check,color: Colors.white,size: 30,),
              label: Text(''),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Note',
          ),
        )),
    );
  }
}
