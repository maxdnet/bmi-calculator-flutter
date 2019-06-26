import 'package:flutter/material.dart';
import 'dart:math';

class BmiBrain {
  final int weight;
  final int height;

  double _bmi;

  BmiBrain({@required this.height, @required this.weight});

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    return 'NORMAL';
  }

  String getIntepretation() {
    return 'Magni bene, sei in forma mo te puoi fa na bella pippa';
  }
}
