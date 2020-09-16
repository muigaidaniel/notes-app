import 'package:flutter/material.dart';
import 'package:notes/notes.dart';
import 'package:notes/notecard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Notes> notes= [
    Notes(title: 'Name',text:'My name is Daniel'),
    Notes(title: 'Gender',text:'I am a boy'),
    Notes(title: 'Age', text: 'I am 19 years old'),
    Notes(text:'I live in Kenya Meteorological Department',title: 'Home' ),
    Notes(text:'I study at the University of Nairobi',title: 'School' ),
    Notes(text:'I am currently doing Bsc. Computer Science',title: 'Course' )
  ];


  Widget noteCard() => NoteCard();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: true,
      ),
      body: Column(
        children: notes.map((note) => NoteCard(
          note: note,
          delete: (){
            setState(() {
              notes.remove(note);
            });
          },
        )).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/addnote');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

