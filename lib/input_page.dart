import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                      child: new ReusableCard(colour: Color(0XFF1D1E33)),
                    ),
                    Expanded(
                      flex: 1,
                      child: new ReusableCard(colour: Color(0XFF1D1E33)),
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
                      child: new ReusableCard(colour: Color(0XFF1D1E33)),
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
                      child: new ReusableCard(colour: Color(0XFF1D1E33)),
                    ),
                    Expanded(
                      flex: 1,
                      child: new ReusableCard(colour: Color(0XFF1D1E33)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;

  ReusableCard({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colour,
      margin: EdgeInsets.all(10.0),
    );
  }
}
