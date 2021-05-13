import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _Splash createState() => _Splash();
}

class _Splash extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Image.asset(
          'lib/src/resources/imgs/bmi-with-colors.png',
          height: 180,
          width: 180,
        ),
      )),
    );
  }

  @override
  void didChangeDependencies() {
    Future.delayed(Duration(seconds: 2)).then((event) {
      Navigator.pushReplacementNamed(context, "/letsCalc");
    });
    super.didChangeDependencies();
  }
}
