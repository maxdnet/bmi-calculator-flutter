import 'package:flutter/material.dart';

enum Gender { male, female }

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  ReusableCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colour,
      margin: EdgeInsets.all(10.0),
      child: Center(child: cardChild),
    );
  }
}
