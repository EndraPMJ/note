import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_flutter/models/Notes.dart';
import 'package:note_flutter/models/NotesOperation.dart';
import 'package:note_flutter/screens/add_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _icon = Icons.wb_sunny;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white70,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddScreen()));
        },
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
        backgroundColor: Colors.lightBlue,
      ),
      appBar: AppBar(
        title: Text('Hello!',style: TextStyle(fontSize: 30),),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.brightness_2,
              color: Colors.black26,
              size: 30,
            ),
            onPressed: (){
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black26,
              size: 30,
            ),
            onPressed: (){},
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      body: Consumer<NotesOperation>(
        builder: (context,NotesOperation data, child) {
          return ListView.builder(
            itemCount: data.getnotes.length,
            itemBuilder: (context, index){
              return NotesCard(data.getnotes[index]);
            },
          );
        },
      ),
    );
  }
}

class NotesCard extends StatelessWidget {
  final Note note;

  NotesCard(this.note);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: 100,
      width: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(note.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Text(note.desc,style: TextStyle(fontSize: 16)),
        ],
      ),
    );

  }
}
