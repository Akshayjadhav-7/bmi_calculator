import 'package:flutter/material.dart';
import 'inputpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  const BMIcalculator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(body1: TextStyle(color: Color(0xFFFFFFFF)),),
      ),
      home: Inputpage(),
    )
    ;
  }
}


