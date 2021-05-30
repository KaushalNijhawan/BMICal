import 'package:bmical/BMI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatefulWidget {
  const BMIResult({Key key}) : super(key: key);

  @override
  _BMIResultState createState() => _BMIResultState();
}
String resultOutputStr = '';
String bmiCategory = '';
String bmi  = '';
class _BMIResultState extends State<BMIResult> {
  @override
  Widget build(BuildContext context) {
    final argsBMI = ModalRoute.of(context).settings.arguments as BMI;
    bmi = argsBMI.calculateBMI(argsBMI.weight, argsBMI.height);
    bmiCategory = argsBMI.getBMIChart(bmi);
    resultOutputStr = argsBMI.gettingBMIConclusionString(bmiCategory);
    print(bmi);
    return Scaffold(
        appBar: AppBar(
        title:Text('BMI Calculator'),
          centerTitle: true,
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                  'Your BMI',
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                  )
              ),
            ),
          ),
          Expanded(
            flex:5,
            child: Container(
              margin: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Color(0xFF343444),
                  borderRadius: BorderRadius.circular(12.0)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                       bmiCategory,
                      style: TextStyle(
                      color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    )
                  ),
                  Text(
                    bmi,
                      style:TextStyle(
                        color : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 79.0,
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      resultOutputStr,
                      style:TextStyle(
                        color: Colors.white70,
                        fontSize: 19.0
                      )
                    ),
                  )
                ],
              ),

            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/');
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.pink,
                    elevation: 10
                  ),
                  child: Text(
                      'Re-Calculate',
                  style: TextStyle(
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
