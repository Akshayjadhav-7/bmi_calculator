import 'package:flutter/material.dart';
import 'constants.dart';



class RoundIconButton extends StatelessWidget {
// const RoundIconButton({Key key}) : super(key: key);

RoundIconButton({@required this.child, @required this.onPressed});
final Widget child;
final Function onPressed;
@override
Widget build(BuildContext context) {
  return RawMaterialButton(
    child: child,
    onPressed: onPressed,
    elevation: 6.0,
    constraints: BoxConstraints.tightFor(
      width: 56.0,
      height: 56.0,
    ),
    shape: CircleBorder(),
    fillColor: Color(0xFF4C4F5E),
  );
}
}
