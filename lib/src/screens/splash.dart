import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  @override
  _Splash createState() => _Splash();
}

class _Splash extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0.1, 0.9],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF81FBB8),
                    Color(0xFF28C76F),
                  ])),
          child: Center(
            child: Icon(
              Icons.calculate,
              size: 160,
              color: Colors.red.shade900,
            ),
          )),
    );
  }

  @override
  void didChangeDependencies() {
    Future.delayed(Duration(seconds: 2)).then((event) {
      Navigator.pushReplacementNamed(context, "/calculates");
    });
    super.didChangeDependencies();
  }
}
