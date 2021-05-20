import 'package:flutter/material.dart';
import 'constants.dart';


class Gesturedetector extends StatelessWidget {

  Gesturedetector({@required this.ontap, @required this.Buttontext});

  final Function ontap;
  final String Buttontext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            Buttontext,
            style: Klargebutton,
          ),),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: KBottomconatinercolor,
        ),
        margin: EdgeInsets.all(15),
        width: double.infinity,
        height: KBottomcontainerheight,
      ),
    );
  }
}