import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bmi_brain.dart';

class ResultPage extends StatelessWidget {
  final BmiBrain bmiBrain;

  ResultPage({@required this.bmiBrain});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Your Result',
              style: kTextStyleBig,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bmiBrain.getResult(),
                      style: kTextStyle,
                    ),
                    Text(
                      bmiBrain.getBMI(),
                      style: kTextNumberStyle,
                    ),
                    Text(
                      bmiBrain.getIntepretation(),
                      style: kTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: kBottomContainerColor,
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              minWidth: double.infinity,
              height: kBottomButtonHeight,
              child: Text(
                'RI-CALCOLA',
                style: kTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
