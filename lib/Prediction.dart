// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:diabetify1/qestions.dart';


class Predicting extends StatefulWidget {
  @override
  _PredictingState createState() => _PredictingState();
}

class _PredictingState extends State<Predicting> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar:PreferredSize(
          preferredSize:Size.fromHeight(80.0),
          child: AppBar(
        title: Text('Predict your chances \nof Diabetes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,fontFamily:'ArchivoBlack',color: Colors.blueGrey[100])),
        centerTitle: true,
        backgroundColor: Colors.black,
      )),
      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Padding(
            padding: EdgeInsets.all(25),
              child: Center(child: RaisedButton.icon(onPressed: (){
                // Call_api();
                return Navigator.push(context, MaterialPageRoute(builder: (context)=>Ques()));
                },
                  label: Text('',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 50,)),
                  padding:EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide(color: Colors.amber[800],width:20.0 )
                ),
                  icon: Icon(Icons.play_arrow,size:100),color: Colors.amber[600]))),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Following up there are going to be a set of questions about you.\n\nAnswer those yes/no questions and then click on the Submit button to go to the results page where you just have to enter your name and age to get the results!\n'
                '\nThe results are just a percentage of the risk of you having the disease.'
                '\n\nPS: Be very cautious while answering these questions!',
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.deepPurple[200],fontFamily: 'Comfortaa')),
          ),
        ],
      ),
    );
  }
}

