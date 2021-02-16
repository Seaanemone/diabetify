import 'package:flutter/material.dart';
import 'package:diabetify/info.dart';
import 'package:diabetify/home.dart';
import 'package:diabetify/Loading.dart';
import 'package:diabetify/Prediction.dart';
import 'package:diabetify/output.dart';
import 'package:diabetify/About us.dart';

void main() {
  runApp(MaterialApp(
    initialRoute:'/',
    routes: {
      '/':(context)=>Loading(),
      '/home':(context)=>Home(),
      '/prediction':(context)=>Predicting(),
      '/info':(context)=>Info(),
      '/output':(context)=>Output(),
      '/about' : (context)=>Aboutus()

    },
  )
  );
}