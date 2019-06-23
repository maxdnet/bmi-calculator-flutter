import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
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
          style: kTextStyle,
        )
      ],
    );
  }
}
