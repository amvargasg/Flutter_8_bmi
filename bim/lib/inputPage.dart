import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cardContent.dart';
import 'reusableCard.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFC31750);
const inactiveColor = Color(0xFF333f7a);
const activeColor = Color(0xFF49548A);

enum Gender { female, male }

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
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? activeColor
                          : inactiveColor,
                      cardChild: CardContent(
                        label: 'Female',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? activeColor
                          : inactiveColor,
                      cardChild: CardContent(
                        label: 'Male',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(colour: inactiveColor),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(colour: inactiveColor),
                  ReusableCard(colour: inactiveColor),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ),
      ),
    );
  }
}
