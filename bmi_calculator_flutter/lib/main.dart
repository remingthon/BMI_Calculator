import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results_page.dart';
import 'calculator_brain.dart';

final int height = 0;
final int weight = 0;

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  final CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/second': (context) => ResultsPage(
              bmiResult: calc.calculateBMI(),
              interpritation: calc.getInterpretation(),
              resultText: calc.getResult(),
            ),
      },
    );
  }
}
