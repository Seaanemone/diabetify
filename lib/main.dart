import 'package:diabetify1/services.dart';
import 'package:flutter/material.dart';
import 'package:diabetify1/info.dart';
import 'package:diabetify1/home.dart';
import 'package:diabetify1/Loading.dart';
import 'package:diabetify1/Prediction.dart';
import 'package:diabetify1/output.dart';
import 'package:diabetify1/About us.dart';
import 'package:diabetify1/Result.dart';
import 'package:diabetify1/locator.dart';
 void main() {
   setupLocator();
   runApp(MaterialApp(
    initialRoute:'/',
    routes: {
      '/':((context)=>Loading()),
      '/home':(context){RouteSettings(name:'home');
      locator<AnalyticsService>().getAnalyticsObserver();
      return Home();},
      '/prediction':(context){RouteSettings(name:'prediction');
      locator<AnalyticsService>().getAnalyticsObserver();
      return Predicting();},
      '/info':(context){RouteSettings(name:"info");
      locator<AnalyticsService>().getAnalyticsObserver();
      return Info();},
      '/output':(context){
        RouteSettings(name:'output');
        locator<AnalyticsService>().getAnalyticsObserver();
        return Output();},
      '/about' : (context){
        RouteSettings(name:'about');
        locator<AnalyticsService>().getAnalyticsObserver();
        return Aboutus();},
      // '/result' : (context)=>Result()
'/result':(context) { RouteSettings(name: 'Results');
locator<AnalyticsService>().getAnalyticsObserver();
        return Result();}
    },
  )
  );
}