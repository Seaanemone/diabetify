import 'dart:async';
import 'package:flutter/material.dart';
import 'package:diabetify1/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}
Future<String> predict_dummy(String URL)async{
  try {
    String url = 'https://limitless-ridge-40510.herokuapp.com/'+URL;
    Response response = await get(url);
  }
  catch(e){
    print("exception : ");
    print(e);
  }
}
class _LoadingState extends State<Loading> {
  @override
  void initState(){
    predict_dummy('40010101010');
    super.initState();
    Timer(
        Duration(seconds: 5),
            ()=>Navigator.pushReplacement(
            context,MaterialPageRoute(builder: (context)=>Home()))
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body:
        Center(
          child: SpinKitChasingDots(
            color: Colors.orange[900],
            size: 80.0,
          ),
        )
    );
  }
}
