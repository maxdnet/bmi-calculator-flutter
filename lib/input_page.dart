import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'number_content.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = kHeight;
  selectGender(Gender g) {
    setState(() {
      selectedGender = g;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ReusableCard(
                        onPress: () {
                          selectGender(Gender.male);
                        },
                        colour: selectedGender == Gender.male
                            ? kActiveCardColour
                            : kCardColour,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ReusableCard(
                          onPress: () {
                            selectGender(Gender.female);
                          },
                          colour: selectedGender == Gender.female
                              ? kActiveCardColour
                              : kCardColour,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'FEMALE',
                          )),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ReusableCard(
                        colour: kActiveCardColour,
                        cardChild: NumberContent(
                          label: 'HEIGHT',
                          height: height,
                          onSliding: (double newValue) {
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ReusableCard(colour: kActiveCardColour),
                    ),
                    Expanded(
                      flex: 1,
                      child: ReusableCard(colour: kActiveCardColour),
                    ),
                  ],
                ),
              ),
              Container(
                color: kBottomContainerColor,
                child: MaterialButton(
                  onPressed: null,
                  minWidth: double.infinity,
                  height: kBottomButtonHeight,
                  child: Text('Calcola'),
                ),
              ),
            ],
          ),
        ));
  }
}
