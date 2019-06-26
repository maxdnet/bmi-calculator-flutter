import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'slider_content.dart';
import 'round_icon_button.dart';
import 'constants.dart';
import 'bmi_brain.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = kHeight;
  int weight = kWeight;
  int age = kAge;

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
                //flex: 4,
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
                //flex: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ReusableCard(
                        colour: kActiveCardColour,
                        cardChild: SliderContent(
                          label: 'HEIGHT',
                          height: height,
                          onSliding: (double newValue) {
                            setState(() {
                              height = newValue.toInt();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                //flex: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ReusableCard(
                        colour: kActiveCardColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: kTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kTextNumberStyle,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: Icons.remove,
                                  onPress: () {
                                    setState(() {
                                      weight = weight - 1;
                                    });
                                  },
                                ),
                                RoundIconButton(
                                  icon: Icons.add,
                                  onPress: () {
                                    setState(() {
                                      weight = weight + 1;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ReusableCard(
                        colour: kActiveCardColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: kTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kTextNumberStyle,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: Icons.remove,
                                  onPress: () {
                                    setState(() {
                                      age = age - 1;
                                    });
                                  },
                                ),
                                RoundIconButton(
                                  icon: Icons.add,
                                  onPress: () {
                                    setState(() {
                                      age = age + 1;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: kBottomContainerColor,
                child: MaterialButton(
                  onPressed: () {
                    BmiBrain bmi = BmiBrain(height: height, weight: weight);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultPage(
                                  bmiBrain: bmi,
                                )));
                    //Navigator.pushNamed(context, '/result', arguments: bmi);
                  },
                  minWidth: double.infinity,
                  height: kBottomButtonHeight,
                  child: Text(
                    'CALCOLA',
                    style: kTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
