import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:core';
import 'dart:async';
class Output extends StatefulWidget {
  @override
  _OutputState createState() => _OutputState();
}
class _OutputState extends State<Output> {
  List getData;
  int age=0;
  String remark='Kindly wait';
  String url;
  String img_loc = '';
  String mess = '';
  String id_ = '999'; // id change here
  Future<String> predict(String URL, String name, List Data)async{
    try {
      String url = 'https://limitless-ridge-40510.herokuapp.com/'+URL;
      String dataB = 'https://secret-anchorage-86627.herokuapp.com/';
      Response response = await get(url);
      dynamic data = jsonDecode(response.body);
      String url1 = dataB+URL+name.toString()+data.toString();
      // print(URL+data.toString()+name.toString());
      Response response1 = await get(url1);
      setState(() {remark = data+'%';
      img_loc = '';
      mess = '';
      });
    }
    catch(e){
      print("exception : ");
      print(e);
      remark = 'try again!';
    }
    Navigator.pushNamed(context, '/result',  arguments: remark);

  }
  TextEditingController _age = TextEditingController();
  // TextEditingController _name = TextEditingController();
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
              // TextField(
              //   controller: _name,
              //   decoration:
              //   InputDecoration(hintText:'Patients ID :',
              //       labelText: 'ID',
              //       suffixIcon: Icon(Icons.person, color: Colors.black,),
              //       labelStyle:
              //       TextStyle(fontWeight: FontWeight.bold,fontSize: 24,
              //           color:Colors.black,fontFamily: ''),
              //       border: InputBorder.none,
              //       fillColor: Colors.blueGrey[500],
              //       filled: true
              //   ),
              //   keyboardType: TextInputType.number,
              //   maxLength: 3,
              //   onSubmitted: (String){setState(() {
              //     //print("name  : ");
              //    // print(_name.text);
              //   });},
              // ),
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
                  predict(url,id_,getData);
                }
                setState(() {
                  img_loc = 'img/load.gif';
                  mess = "Getting Results";
                });

              }, color:Colors.amber[600],icon: Icon(Icons.check_circle_rounded, size: 60,), label: Text('Get Results!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),),)),
              SizedBox(height:20,),
              Center(child: Row(children:[SizedBox(width: 50,),Text(mess,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),SizedBox(width: 10,),Image.asset(img_loc)])),
            ],
          ),
        ),
      ),
    );
  }
}
