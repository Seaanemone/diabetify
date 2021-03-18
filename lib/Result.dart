
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter/widgets.dart';


class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}
class _ResultState extends State<Result> {
  String remark;
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    remark = ModalRoute.of(context).settings.arguments;
    if(remark !='try again!')
      {
        toggle =true;
      }
    print(remark);
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Results!',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'ArchivoBlack',fontSize: 30,color:Colors.blueGrey[100])),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:
      Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 80, 50, 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  child: Text(remark,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'LexendGiga'),),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.lightGreenAccent ),
                ),
              ),
              SizedBox(height:50),
              Padding(
                padding: EdgeInsets.all(7),
                child: toggle?Text('This percentage value is a remote chance of you having diabetes!\n\nIt is not the final diagnosis!\n \nBut do get yourself checked if you get a score above 90%\n\nSTAY HEALTHY, \nSTAY HAPPY!',
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.deepPurple[200],fontFamily: 'Comfortaa')
                ):Text("Please Go back and Click on the get results again!",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.deepPurple[200],fontFamily: 'Comfortaa')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
