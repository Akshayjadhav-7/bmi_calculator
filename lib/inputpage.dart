import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'Icon_card.dart';

enum Gender { male, female }

class Inputpage extends StatefulWidget {
  const Inputpage({Key key}) : super(key: key);

  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Gender Selectedgender;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Selectedgender = Gender.male;
                    });
                  },
                  child: reusablecard(
                    colors: Selectedgender == Gender.male
                        ? KActivecardcolor
                        : KInactivecardcolor,
                    childcard: Iconcard(
                      icons: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Selectedgender = Gender.female;
                    });
                  },
                  child: reusablecard(
                    colors: Selectedgender == Gender.female
                        ? KActivecardcolor
                        : KInactivecardcolor,
                    childcard: Iconcard(
                      icons: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: reusablecard(
              childcard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: lableText,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: KNumbertextstyle),
                      Text('cm', style: lableText),

                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFFBDBE98),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      overlayColor: Color(0x29EB1555)

                    ),

                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,


                      onChanged: (double newValue){
                       setState(() {
                            height = newValue.round();
                       });
                      },
                    ),
                  ),
                ],
              ),
              colors: KActivecardcolor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusablecard(
                    colors: KActivecardcolor,
                  ),
                ),
                Expanded(
                  child: reusablecard(
                    colors: KActivecardcolor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: KBottomconatinercolor,
            ),
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: KBottomcontainerheight,
          )
        ],
      ),
    );
  }
}
