import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Gesturedetector.dart';

class Resultpage extends StatelessWidget {

  Resultpage({ @required this.calculateBMI, @required this.BMIresult,@required this.interpretation});



  final String calculateBMI;
  final String BMIresult;
   final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(

                  'Your Result'
                  ,

                  style: KTextRsultpage),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusablecard(colors: KActivecardcolor,
            childcard: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(BMIresult.toUpperCase(),style: Kresultextstyle,),
                Text(calculateBMI,style: KBMIresult,),
                Text(interpretation,
                  textAlign: TextAlign.center,
                 style: KbodyResult,),

              ],

            ),),
          ),
          Gesturedetector(ontap: () {Navigator.pop(context);},
              Buttontext: 'RE-CALCULATE')

        ],
      ),
    );
  }
}
