import 'package:bmi_calc/src/resources/InterfaceHelper.dart';
import 'package:flutter/material.dart';

class LetsCalc extends StatefulWidget {
  @override
  _LetsCalc createState() => _LetsCalc();
}

InterfaceHelper ih = InterfaceHelper();

class _LetsCalc extends State<LetsCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: ih.backGradient(),
            child: SafeArea(
                child: Padding(
                    padding: EdgeInsets.only(top: 25, left: 10, right: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ih.boldBranding("Welcome to BMI Calc"),
                          ih.text("Calculates your Body-Mass-Index", 21,
                              Colors.white, false,
                              font: 'Open Sans'),
                          ih.txtButton(
                              () => Navigator.pushNamed(context, "/calculates"),
                              "Let's calculate",
                              Colors.white,
                              Colors.blue[300])
                        ])))));
  }
}
