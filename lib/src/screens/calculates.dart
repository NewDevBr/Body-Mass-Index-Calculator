import 'package:bmi_calc/src/resources/calculator.dart';
import 'package:flutter/material.dart';

class Calculates extends StatefulWidget {
  _Calculates createState() => _Calculates();
}

TextEditingController _txtCtrlBodyWeight = TextEditingController();
TextEditingController _txtCtrlHeight = TextEditingController();
Calculator calc = Calculator();
GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _Calculates extends State<Calculates> {
  @override
  void didChangeDependencies() {
    print("Chamou a função");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _txtCtrlHeight,
                    validator: (inputedValue) =>
                        calc.inputValidator(inputedValue),
                    onSaved: (inputedValue) =>
                        calc.setHeight = double.parse(inputedValue),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  TextFormField(
                    controller: _txtCtrlBodyWeight,
                    validator: (inputedValue) =>
                        calc.inputValidator(inputedValue),
                    onSaved: (inputedValue) =>
                        calc.setBodyWeight = double.parse(inputedValue),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
