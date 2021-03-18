import 'package:flutter/material.dart';
class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}
class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: PreferredSize(
        preferredSize:Size.fromHeight(80.0),
        child: AppBar(
          title: Text('A bit About\n Diabetes!  ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily:'ArchivoBlack',color: Colors.blueGrey[100])),
          centerTitle: true,
          backgroundColor: Colors.black,
        )),
        body:
        Padding(
          padding: EdgeInsets.all(20),
          child: Column  (
            children: [SizedBox(height: 10,),
              Text('Diabetes is a chronic disease that is caused due to the inability of the production of insulin by the body.'
                  'The lack of insulin in the body leads to raised blood glucose level.\n According to studies conducted by the International Diabetes Foundation(IDF),'
                  'approximately 463 million adults have diabetes and by 2045 this number will rise to 700 million. '
                  'Type 2 diabetes accounts for 90% of the total number of diabetes cases, '
                  'while the remaining 10% of cases are mainly due to Type 1 diabetes mellitus and gestational diabetes. '
                  'With the increasing proportion, 374 million people are at risk of developing type 2 diabetes.\n '
                  'This disease has caused 4.2 million deaths around the globe. According to WHO estimates, '
                  'diabetes mellitus is the ninth leading cause of deaths in the world.\n '
                  'Diabetes has severe health impacts such as kidney failure, increased risk of heart attack and strokes. '
                  'Even if we try the ostrich approach towards this problem basically the ignorance but the result could be lethal. '
                  'Diabetes if left untreated can result in damaging nerves, '
                  'kidneys, eyes and other organs.\nThere are different types of diabetes mainly Type 1 and Type 2. ',
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.deepPurple[200],fontFamily: 'Comfortaa'))
            ],
          ),
        )
    );
  }
}
