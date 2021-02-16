import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:diabetify/output.dart';
class Question{
  String ques;
  dynamic resp;
  bool Ypressed;
  bool Npressed;
  Question({this.ques,this.resp,this.Ypressed, this.Npressed});
}



class Ques extends StatefulWidget {
  @override
  _QuesState createState() => _QuesState();
}

class _QuesState extends State<Ques> {

  List QnA = [

    Question(ques:"Are you a male?",resp: 'NULL',Ypressed: false,Npressed: false),
    Question(ques:"Are you having frequent urination?",resp: 'NULL',Ypressed: false,Npressed: false),
    Question(ques:"Do you experience frequent thirst? ",resp: 'NULL',Ypressed: false,Npressed: false),
    Question(ques:"Do you feel you have sudden weight loss?",resp: 'NULL',Ypressed: false,Npressed: false),
    Question(ques:"Have you been feeling weak?",resp: 'NULL',Ypressed: false,Npressed: false),
    Question(ques:"Are you experiencing frequrent hunger?",resp: 'NULL',Ypressed: false,Npressed: false),
    Question(ques:"Are you experiencing visual blurring?",resp: 'NULL',Ypressed: false,Npressed: false),
    Question(ques:"Do you feel excessive anger or irritability?",resp: 'NULL',Ypressed: false,Npressed: false),
    Question(ques:"Are your muscles feeling stiff or weakened lately?",resp: 'NULL',Ypressed: false,Npressed: false),
    Question(ques:"hello",resp: 'okay',Ypressed: false,Npressed: false)
  ];
  List Respond= [0,0,0,0,0,0,0,0,0,0];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(title: Text('Q/A', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'ArchivoBlack',fontSize: 35,color: Colors.blueGrey[100]),
      ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:
      ListView.builder(itemCount: QnA.length,itemBuilder: (context,index){

        return (index <QnA.length-1)?
        Card(
          margin: EdgeInsets.fromLTRB(37, 10, 37, 25),
          child: Column(
            children: [
              Text(
                QnA[index].ques,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'LexendGiga'),
              ),
              SizedBox(height: 10),
              Row(
                  children:[
                    SizedBox(width: 50,),
                    FlatButton.icon(onPressed: (){
                      setState(() {
                        QnA[index].Ypressed = true;
                        QnA[index].Npressed = false;
                        QnA[index].resp = 1;
                        Respond[index+1] = 1;
                      });


                      print(QnA[index].resp);
                    }, icon: Icon(Icons.check), label: Text('Yes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'LexendGiga'),), color: QnA[index].Ypressed?Colors.green:Colors.white,),
                    SizedBox(width:40),
                    FlatButton.icon(onPressed: (){
                      setState(() {
                        QnA[index].Npressed = true;
                        QnA[index].Ypressed = false;
                        QnA[index].resp = 0;
                        Respond[index+1]=0;
                      });
                      print(QnA[index].resp);

                    }, icon: Icon(Icons.error), label: Text('No'),color: QnA[index].Npressed?Colors.red:Colors.white,)
                  ])
            ],

          ),
        ):
        FlatButton.icon(onPressed: (){
          int flag = 0;
          for(int i=0;i<QnA.length-1;i++)
          {
            if(QnA[i].resp=='NULL')
            {
              flag = 1;
              break;
            }
          }
          if(flag ==0)
          {
            return Navigator.pushNamed(context, '/output',  arguments: Respond);
          }
        }, icon: Icon(Icons.done), label:Text('SUBMIT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,fontFamily: 'Jomhuria'),), color: Colors.amber[600],);
      }
      ),


    );
  }
}



