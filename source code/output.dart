import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:core';

class Output extends StatefulWidget {
  @override
  _OutputState createState() => _OutputState();
}

class _OutputState extends State<Output> {
  List getData;
  int age=0;
  String remark='Please Wait for Results.';
  String url;

  Future<void> predict(String URL)async{
    try {
      String url = 'https://limitless-ridge-40510.herokuapp.com/'+URL;
      Response response = await get(url);
      dynamic data = jsonDecode(response.body);
      print('Accuracy :');
      print(data);
      setState(() {
        remark = data;
      });
    }
    catch(e){
      print(e);
    }
  }
  Future<void> database_send(List Data, String name)async{
    String dataB = 'https://limitless-beyond-92187.herokuapp.com/';
    try {
      List _data = [0,0,0,0,0,0,0,0,0,0,0];
      for (int i=0;i<10;i++)
      {
        _data[i] = Data[i];
      }
      _data[10]=name;
      String newurl = _data.join('');
      String url = dataB+newurl;
      print(url);
      Response response = await get(url);
      dynamic data = jsonDecode(response.body);
      print('Data:');
      print(data);
    }
    catch(e){
      print(e);
    }
  }
  TextEditingController _age = TextEditingController();
  TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    getData = ModalRoute.of(context).settings.arguments;
    print(getData);
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Final Step!',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'ArchivoBlack',fontSize: 30,color:Colors.blueGrey[100])),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:
      Center(
        child: Padding(
          padding: EdgeInsets.all(44),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _name,
                decoration:
                InputDecoration(hintText:'Your Name :',
                    labelText: 'Name',
                    suffixIcon: Icon(Icons.person, color: Colors.black,),
                    labelStyle:
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 24,
                        color:Colors.black,fontFamily: ''),
                    border: InputBorder.none,
                    fillColor: Colors.blueGrey[500],
                    filled: true
                ),
                maxLength: 15,
                onSubmitted: (String){setState(() {
                  print("name  : ");
                  print(_name.text);
                });},
              ),
              SizedBox(height: 10,),
              TextField(
                controller: _age,
                decoration:
                InputDecoration(hintText:'Your age :',
                    labelText: 'Age',
                    suffixIcon: Icon(Icons.person, color: Colors.black,),
                    labelStyle:
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 24,
                        color:Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.blueGrey[500],
                    filled: true
                ),
                keyboardType: TextInputType.number,
                maxLength: 2,
                onSubmitted: (int){
                  setState(() {
                    getData[0] =_age.text;
                    // print(getData);
                  });},

              ),
              SizedBox(height: 80,),
              Center(child: FlatButton.icon(onPressed: (){
                url = getData.join('');

                print(getData);

                if(_age.text !="0") {
                  predict(url);
                  database_send(getData, _name.text);
                }

              }, color:Colors.lightGreenAccent,icon: Icon(Icons.check_circle_rounded, size: 60,), label: Text('Get Results!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),),)),
              SizedBox(height:20,),
              Center(
                child: Container(
                  child: Text(remark,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'LexendGiga'),),
                  padding: EdgeInsets.all(70),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.amber[600] ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
