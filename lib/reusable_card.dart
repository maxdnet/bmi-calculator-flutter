import 'package:flutter/material.dart';

enum Gender { male, female }

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        color: colour,
        margin: EdgeInsets.all(10.0),
        child: Center(child: cardChild),
      ),
    );
  }
}
