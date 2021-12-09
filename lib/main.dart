import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kInactiveCardColour,
        appBarTheme: AppBarTheme(
          backgroundColor: kInactiveCardColour,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
