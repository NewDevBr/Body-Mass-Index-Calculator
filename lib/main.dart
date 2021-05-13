import 'package:bmi_calc/src/screens/calculates.dart';
import 'package:bmi_calc/src/screens/letsCalc.dart';
import 'package:bmi_calc/src/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(BmiCalc());
}

class BmiCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [GlobalMaterialLocalizations.delegate],
        supportedLocales: [const Locale('pt', 'BR')],
        initialRoute: '/splash',
        routes: {
          '/splash': (BuildContext context) => Splash(),
          '/letsCalc': (BuildContext context) => LetsCalc(),
          '/calculates': (BuildContext context) => Calculates(),
        });
  }
}
