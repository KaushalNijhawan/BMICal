import 'package:bmical/BMIResultScreen.dart';
import 'package:bmical/BmiCal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            primaryColor: Color(0xFF1D1C23),
            scaffoldBackgroundColor: Color(0xFF1D1C23),
            accentColor: Colors.purple,
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(

              )
            )
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => BMICal(),
          '/showBMI' : (context) => BMIResult()
        },
    )
  );
}

