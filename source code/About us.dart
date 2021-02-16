import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  @override
  _AboutusState createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Text("About Us", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: 'ArchivoBlack',color: Colors.blueGrey[100]),),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50, width: 30,),

            Text("DiaBetify", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60,fontFamily: 'Righteous',color: Colors.orange[900]),),
            SizedBox(height: 60,),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(" DiaBetify is a platform which let you know whether you should go and get a check up for "
                  "diabetes or not! \n\n\n We use Artificial Intelligence to give a score to your answers "
                  "which depicts the chances of you having diabetes.\n\n\n DiaBetify is developed and maintained by ML enthusiasts, Abhimanyu Jadli and Apratim Sadhu.",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,fontFamily: 'Comfortaa',color: Colors.deepPurple[200])),
            ),
          ],
        )

    );
  }
}
