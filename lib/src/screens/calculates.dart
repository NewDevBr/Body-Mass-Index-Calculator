import 'package:bmi_calc/src/resources/InterfaceHelper.dart';
import 'package:bmi_calc/src/resources/calculator.dart';
import 'package:flutter/material.dart';

class Calculates extends StatefulWidget {
  _Calculates createState() => _Calculates();
}

TextEditingController _txtCtrlBodyWeight = TextEditingController();
TextEditingController _txtCtrlHeight = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

Calculator calc = Calculator();
InterfaceHelper ih = InterfaceHelper();

class _Calculates extends State<Calculates> {
  String bmi = '';
  String bmiClassification = '';
  validateForm(typedValue) {
    if (_txtCtrlBodyWeight.text.isNotEmpty && _txtCtrlHeight.text.isNotEmpty) {
      if (_formKey.currentState.validate()) {
        setState(() {
          calc.setBodyWeight = double.parse(_txtCtrlBodyWeight.text);
          calc.setHeight = double.parse(_txtCtrlHeight.text);
          bmi = (calc.determineBMI).toStringAsPrecision(3);
          bmiClassification = calc.classify(calc.determineBMI);
        });
      }
    }
  }

  InputDecoration decoreForm({bool weight = true}) {
    return InputDecoration(
        counterText: '',
        hintText: weight ? 'Type your body weight' : 'Type your height',
        hintStyle: TextStyle(
            fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 18));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: bmi != ""
                            ? Text(
                                bmi,
                                style: TextStyle(
                                    fontSize: 120,
                                    foreground: Paint()..shader = ih.shader()),
                              )
                            : Image.asset(
                                "lib/src/resources/imgs/black-bmi.png"),
                      ),
                      Text(
                        bmiClassification,
                        style: TextStyle(
                            fontSize: 26,
                            foreground: Paint()..shader = ih.shader()),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: decoreForm(),
                              maxLength: 4,
                              onChanged: (typedValue) =>
                                  validateForm(typedValue),
                              controller: _txtCtrlBodyWeight,
                              validator: (typedValue) =>
                                  calc.inputValidator(typedValue),
                              onSaved: (typedValue) =>
                                  calc.setBodyWeight = double.parse(typedValue),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                            TextFormField(
                              decoration: decoreForm(weight: false),
                              maxLength: 4,
                              onChanged: (typedValue) =>
                                  validateForm(typedValue),
                              controller: _txtCtrlHeight,
                              validator: (typedValue) =>
                                  calc.inputValidator(typedValue),
                              onSaved: (typedValue) =>
                                  calc.setHeight = double.parse(typedValue),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }

  @override
  void dispose() {
    _txtCtrlHeight.text = "";
    _txtCtrlBodyWeight.text = "";
    super.dispose();
  }
}
