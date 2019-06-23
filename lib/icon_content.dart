import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final _cardTextColour = Colors.white70;
  final _cardTextSize = 18.0;
  final _cardIconSize = 80.0;

  final String label;
  final IconData icon;

  IconContent({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: _cardIconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: _cardTextSize, color: _cardTextColour),
        )
      ],
    );
  }
}
