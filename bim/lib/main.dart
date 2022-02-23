import 'package:flutter/material.dart';

import 'inputPage.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF262e5a),
        colorScheme: ColorScheme.light(
          primary: Color(0xFF262e5a),
          secondary: Color(0xFF872263),
        ),
      ),
      home: InputPage(),
    );
  }
}
