import 'package:flutter/material.dart';
import 'constants.dart';

class SliderContent extends StatelessWidget {
  final String label;
  final int height;
  final Function onSliding;
  SliderContent({this.label, this.height, this.onSliding});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kTextStyle,
        ),
        /*SizedBox(
          height: 15.0,
        ),*/
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              height.toString(),
              style: kTextNumberStyle,
            ),
            Text(
              'CM',
              style: kTextStyle,
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
          child: Slider(
            value: height.toDouble(),
            min: 120,
            max: 220,
            //divisions: 1,
            activeColor: kBottomContainerColor,
            inactiveColor: Color(0XFF8D8E98),
            onChanged: onSliding,
          ),
        )
      ],
    );
  }
}
