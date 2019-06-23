import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const activeCardColour = Color(0XFF1D1E33);
const cardColour = Color(0XFF111328);

const bottomButtonHeight = 80.0;
const bottomContainerColor = Color(0XFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        child: ReusableCard(
                          colour: selectedGender == Gender.male
                              ? activeCardColour
                              : cardColour,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.mars,
                            label: 'MALE',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        child: ReusableCard(
                            colour: selectedGender == Gender.female
                                ? activeCardColour
                                : cardColour,
                            cardChild: IconContent(
                              icon: FontAwesomeIcons.venus,
                              label: 'FEMALE',
                            )),
                      ),
                    )
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
                      child: ReusableCard(colour: activeCardColour),
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
                      child: ReusableCard(colour: activeCardColour),
                    ),
                    Expanded(
                      flex: 1,
                      child: ReusableCard(colour: activeCardColour),
                    ),
                  ],
                ),
              ),
              Container(
                color: bottomContainerColor,
                child: MaterialButton(
                  onPressed: null,
                  minWidth: double.infinity,
                  height: bottomButtonHeight,
                  child: Text('Calcola'),
                ),
              ),
            ],
          ),
        ));
  }
}
