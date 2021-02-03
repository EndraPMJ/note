import 'package:flutter/material.dart';
import 'package:note_flutter/models/NotesOperation.dart';
import 'package:provider/provider.dart';

class AddScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String titleText;
    String descText;

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white70,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<NotesOperation>(context, listen: false).addnote(titleText, descText);
          Navigator.pop(context);
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(
          Icons.save,
          size: 40,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Input TItle",
                hintStyle: TextStyle(fontFamily: 'NunitoSans',fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black38)
              ),
              style: TextStyle(fontFamily: 'NunitoSans',fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black38),
              onChanged: (value){
                titleText = value;
              },
            ),
      Expanded(
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Input Description",
              hintStyle: TextStyle(fontSize: 16,color: Colors.black)
          ),
          style: TextStyle(fontSize: 16,color: Colors.black),
          onChanged: (value){
            descText = value;
          },
        ),
      ),

          ],
        ),
      ),
    );
  }
}