import 'dart:math';

import 'package:flutter/foundation.dart';

class calculatebrain {
  calculatebrain({@required this.height, @required this.weight});
  int height;
  int weight;

  double _bmi = 0;

  String calculateBMI() {
    double _bmi;
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String BMIresult() {
     if (_bmi >= 25) {
       return 'OVERWEIGHT';
     } else if (_bmi >= 18.5) {
       return 'Perfect';
     } else {
       return 'UNDERWEIGHT';
     }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'You need to do dieting and excercise';
    } else if (_bmi >= 18.5) {
      return 'You bmi is perfect';
    } else {
      return 'You need to get healthy diet and do excercise';
    }
  }
}
