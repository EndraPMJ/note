import 'package:flutter/material.dart';
import 'package:note_flutter/models/Notes.dart';
import 'package:note_flutter/models/NotesOperation.dart';
import 'package:note_flutter/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context) =>NotesOperation(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}


