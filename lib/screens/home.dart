import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int weight = 60;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.mars, size: 76),
                        const SizedBox(height: 10),
                        Text(
                          'MALE',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.venus, size: 76),
                        const SizedBox(height: 10),
                        Text(
                          'FEMALE',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kLabelTextStyle),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('$height', style: kValueTextStyle),
                      Text('cm', style: TextStyle(fontSize: 22)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 16,
                      ),
                      overlayColor: kBottomContainerColour,
                    ),
                    child: Slider(
                      activeColor: Colors.white,
                      thumbColor: kBottomContainerColour,
                      inactiveColor: Colors.grey,
                      min: 10,
                      max: 300,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              // '$weight', // String Interpolation
                              weight.toString(),
                              style: kValueTextStyle,
                            ),
                            Text('kg', style: TextStyle(fontSize: 22)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              constraints: BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                              fillColor: Colors.grey,
                              shape: CircleBorder(),
                              onPressed: () {},
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                            const SizedBox(width: 10),
                            RawMaterialButton(
                              constraints: BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                              fillColor: Colors.grey,
                              shape: CircleBorder(),
                              onPressed: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                              child: Icon(FontAwesomeIcons.plus),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '20',
                              style: kValueTextStyle,
                            ),
                            Text('yrs', style: TextStyle(fontSize: 22)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              constraints: BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                              fillColor: Colors.grey,
                              shape: CircleBorder(),
                              onPressed: () {},
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                            const SizedBox(width: 10),
                            RawMaterialButton(
                              constraints: BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                              fillColor: Colors.grey,
                              shape: CircleBorder(),
                              onPressed: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                              child: Icon(FontAwesomeIcons.plus),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          RawMaterialButton(
            child: Text('CALCULATE'),
            onPressed: () {},
            fillColor: kBottomContainerColour,
            constraints: BoxConstraints.tightFor(
              width: double.infinity,
              height: 56,
            ),
          ),
        ],
      ),
    );
  }
}
