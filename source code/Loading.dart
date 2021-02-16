import 'dart:async';

import 'package:flutter/material.dart';
import 'package:diabetify/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState(){
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
