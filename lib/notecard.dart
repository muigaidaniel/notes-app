import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/notes.dart';


class NoteCard extends StatelessWidget {
  final Notes note;
  final Function delete;

  NoteCard({this.note,this.delete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        color: Colors.grey[400],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            note.title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                        ),
                        SizedBox(height: 5),
                        Text(
                            note.text,
                          style: TextStyle(
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FlatButton.icon(
                    onPressed:delete,
                    icon: Icon(Icons.delete),
                    label: Text('Delete'))
              ],
            ),
          )
      ),
    );
  }
}
