import 'package:flutter/material.dart';
import 'package:notes/addnote.dart';
import 'package:notes/homescreen.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => HomeScreen(),
    '/addnote' : (context) => AddNote()
  },
));

