import 'package:flutter/material.dart';
import 'constants.dart';

class NumberContent extends StatelessWidget {
  final String label;
  final int height;
  final Function onSliding;
  NumberContent({this.label, this.height, this.onSliding});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kTextStyle,
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              '180',
              style: kTextNumberStyle,
            ),
            Text(
              'CM',
              style: kTextStyle,
            ),
          ],
        ),
        Slider(
          value: height.toDouble(),
          min: 120,
          max: 220,
          divisions: 1,
          onChanged: onSliding,
        )
      ],
    );
  }
}
