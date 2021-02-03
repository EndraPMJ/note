import 'package:flutter/cupertino.dart';
import 'package:note_flutter/models/Notes.dart';

class NotesOperation extends ChangeNotifier{
  List<Note> _notes = new List<Note>();
  List<Note> get getnotes {
    return _notes;
  }

  void addnote(String title, String desc){
    Note note = Note(title,desc);
    _notes.add(note);
    notifyListeners();
  }
}