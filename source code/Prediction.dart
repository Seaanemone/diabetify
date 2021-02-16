// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:diabetify/qestions.dart';


class Predicting extends StatefulWidget {
  @override
  _PredictingState createState() => _PredictingState();
}

class _PredictingState extends State<Predicting> {
  Future<void> Call_api() async{
    try{
      String url = 'https://limitless-beyond-92187.herokuapp.com/apratim';
      Response response = await get(url);
      Map data = jsonDecode(response.body);
      print(data);
      print(data['age']);
    }
    catch(e){
      print('caught error $e');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar:PreferredSize(
          preferredSize:Size.fromHeight(80.0),
          child: AppBar(
        title: Text('Predict your chances \n        of Diabetes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,fontFamily:'ArchivoBlack',color: Colors.blueGrey[100])),
        centerTitle: true,
        backgroundColor: Colors.black,
      )),
      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Padding(
            padding: EdgeInsets.all(30),
              child: Center(child: RaisedButton.icon(onPressed: (){
                // Call_api();
                return Navigator.push(context, MaterialPageRoute(builder: (context)=>Ques()));
                },
                  label: Text('',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 50,)),
                  padding:EdgeInsets.all(30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide(color: Colors.amber[800],width:20.0 )
                ),
                  icon: Icon(Icons.play_arrow,size:100),color: Colors.amber[600]))),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Following up there are going to be a set of questions about you.\n\nAnswer those yes/no questions and then click on the Submit button to go to the results page where you just have to enter your name and age to get the results!',
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.deepPurple[200],fontFamily: 'Comfortaa')),
          ),
        ],
      ),
    );
  }
}

// class Prediction{
//   List param = ['Age', 'Gender', 'Polyuria', 'Polydipsia', 'sudden weight loss',
//     'weakness', 'Polyphagia', 'visual blurring', 'Irritability',
//     'partial paresis'];
//   List data;
//   List getData(){
//     for(int i=0; i<param.length;i++)
//       {
//
//       }
//   }
// }