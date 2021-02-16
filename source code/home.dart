import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diabetify/About%20us.dart';
import 'package:diabetify/info.dart';
import 'package:diabetify/Prediction.dart';
import "package:url_launcher/url_launcher.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _launchURL() async{
    const url = "https://www.webmd.com/diabetes/diabetes-lifestyle-tips#:~:text=Focus%20on%20eating%20only%20as,high%20in%20sugar%20and%20fat.";
    if(await canLaunch(url)){
      await launch(url, forceWebView: true);
    }
    else{
      throw 'could not launch $url';
    }
  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(80.0),
        child:AppBar(
        title: Text('DiaBetify ',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Righteous',fontSize: 50,color: Colors.orange[900])),
        centerTitle: true,
        backgroundColor: Colors.black,
      )),
      body:
      Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 70, 50, 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RaisedButton.icon(onPressed: (){
              return Navigator.push(
                  context,MaterialPageRoute(builder: (context)=>Predicting())
                );
              },
                padding:EdgeInsets.all(20),
                icon: Icon(Icons.offline_bolt,color: Colors.black,size: 30,),
                label: Text('Prediction', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'FredokaOne',fontSize:30)),
                color: Colors.amber[600],elevation: 1.0,shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.amber[800],width:5.0)
                  ),

              ),
              SizedBox(height:10),
              RaisedButton.icon(onPressed: (){
                return Navigator.push(
                    context,MaterialPageRoute(builder: (context)=>Info())
                );
              },padding:EdgeInsets.all(20), icon: Icon(Icons.info,color:Colors.black,size:30),
                label: Text('Know about Diabetes',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontFamily: 'FredokaOne',fontSize:20)),
                color: Colors.amber[600],elevation: 1.0,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.amber[800],width:5.0 )
                ),
              ),
              SizedBox(height:10),
              // RaisedButton.icon(onPressed: (){
              //   return Navigator.push(
              //       context,MaterialPageRoute(builder: (context)=>Food())
              //   );
              // }, padding:EdgeInsets.all(20),icon: Icon(Icons.fastfood,color:Colors.black,size: 30,), label: Text('Food Habits',
              //     style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontFamily: 'FredokaOne',fontSize: 30)),
              //   color: Colors.amber[600],elevation: 1.0,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(50),
              //     side: BorderSide(color: Colors.amber[800],width:5.0 )
              // ),
              // ),
              //
              // SizedBox(height:20),
              RaisedButton.icon(onPressed:
                _launchURL
                , padding:EdgeInsets.all(20),icon: Icon(Icons.check_circle_sharp,color:Colors.black,size:30), label: Text(
                'Lifestyle',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontFamily: 'FredokaOne',fontSize: 30),
              ),color: Colors.amber[600],elevation: 1.0,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Colors.amber[800],width:5.0 )),),
              SizedBox(height:10),

              RaisedButton.icon(onPressed: (){
                return Navigator.push(
                    context,MaterialPageRoute(builder: (context)=>Aboutus())
                );
              },padding:EdgeInsets.all(20), icon: Icon(Icons.lightbulb,color:Colors.black,size:30),
                label: Text('About Us',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontFamily: 'FredokaOne',fontSize:30)),
                color: Colors.amber[600],elevation: 1.0,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.amber[800],width:5.0 )
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
