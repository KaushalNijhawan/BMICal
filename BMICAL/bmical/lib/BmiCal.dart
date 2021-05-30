import 'package:bmical/BMI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'CardContent.dart';
import 'ContainerWidget.dart';

const inactivecolor = Color(0xFF343444);
const activecolor = Color(0xFF161618);
int height = 110;
class BMICal extends StatefulWidget {
  const BMICal({Key key}) : super(key: key);

  @override
  _BMICalState createState() => _BMICalState();
}
    var maleCardColor   = inactivecolor;
    var femaleCardColor = inactivecolor;
    int weight = 47;
    int age =  20;
class _BMICalState extends State<BMICal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "BMI Calculator",
            style: TextStyle(
                color: Colors.white
            )
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        maleCardColor = maleCardColor == inactivecolor ? activecolor : inactivecolor;
                        femaleCardColor = maleCardColor == activecolor ? inactivecolor : activecolor;
                      });
                    },
                    child: ContainerWidget(
                        colour : maleCardColor,
                        cardwidget : CardWidget(textCard : "Male".toUpperCase() , icon : FontAwesomeIcons.mars)
                    ),
                  )
                ),
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          femaleCardColor = femaleCardColor == inactivecolor ? activecolor : inactivecolor;
                          maleCardColor = femaleCardColor == activecolor ? inactivecolor : activecolor;
                        });
                      },
                        child: ContainerWidget(colour : femaleCardColor,
                            cardwidget: CardWidget(textCard: "Female".toUpperCase(),icon : FontAwesomeIcons.venus)
                        )
                    )
                )
              ],
            ),
          ),
          Expanded(
              child: ContainerWidget(
                  colour : inactivecolor,
                  cardwidget: Center(
                    child : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'height'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 20.0,
                            color : Colors.white54
                          )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              height.toString(),
                               style:TextStyle(
                                 fontSize: 30.0,
                                 fontWeight: FontWeight.bold
                               )
                            ),
                            Text(
                              'cm',
                              style:TextStyle(
                                fontSize: 14.0,
                                color : Colors.white54,

                              )
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.white54,
                            thumbColor: Colors.pink,
                            overlayColor: Colors.pink[400]
                          ),
                          child: Slider(
                            value : height.toDouble(),
                            onChanged: (double newVal){
                              setState(() {
                                  height = newVal.round();
                              });
                            },
                            min : 90.0,
                            max: 260.0,
                          ),
                        )
                      ],
                    )
                  )
              )
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(
                      colour : inactivecolor,
                    cardwidget: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text(
                               'Weight'.toUpperCase(),
                               style: TextStyle(
                                 color : Colors.white54,
                                 fontSize: 20.0
                               )
                             ),
                            Text(
                              weight.toString(),
                              style:TextStyle(
                                color: Colors.white,
                                fontSize: 28.0
                              )
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 TextButton(

                                   onPressed: (){
                                     setState(() {
                                        weight++;
                                     });
                                   },
                                   child: Icon(
                                     Icons.add_circle_sharp,
                                     size : 45.0,
                                     color: Colors.pink,
                                   ),
                                    ),
                                 TextButton(
                                   onPressed: (){
                                     setState(() {
                                       weight--;
                                     });
                                   },
                                   child: Icon(
                                     Icons.remove_circle,
                                     size:45.0,
                                       color: Colors.pink
                                   ),
                                 )
                               ],
                            )

                          ],
                        )
                    ),
                  )
                ),
                Expanded(
                    child: ContainerWidget(
                        colour: inactivecolor,
                        cardwidget: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(
                                 'age'.toUpperCase(),
                                 style:TextStyle(
                                     color : Colors.white54,
                                     fontSize: 20.0
                                 )
                               ),
                              Text(
                                age.toString(),
                                style:TextStyle(
                                    color : Colors.white,
                                    fontSize: 28.0
                                )
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add_circle_sharp,
                                      size : 45.0,
                                      color: Colors.pink
                                    ),
                                  ),
                                  TextButton(

                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: Icon(
                                        Icons.remove_circle_outlined,
                                        size:45.0,
                                        color: Colors.pink
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ),
                    )
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: 65.0,
              child: TextButton(

                  style: TextButton.styleFrom(
                     primary: Colors.white,
                     backgroundColor: Colors.pink,
                     ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/showBMI' , arguments: BMI(weight.toString(), height.toString()));
                  },
                  child: Text(
                    'Calculate',
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 29.0,
                      fontWeight: FontWeight.bold
                    )
                  )
              ),
            ),
          )
        ],
      )
    );
  }
}

