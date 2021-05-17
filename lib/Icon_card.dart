import 'package:flutter/material.dart';
import 'constants.dart';


class Iconcard extends StatelessWidget {

  Iconcard({this.icons,this.label});
  final IconData icons;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: lableText,
        ),
      ],
    );
  }
}
