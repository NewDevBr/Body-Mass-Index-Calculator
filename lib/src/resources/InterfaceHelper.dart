import 'package:flutter/material.dart';

class InterfaceHelper {
  shader() => gradiente().createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  backGradient() => BoxDecoration(gradient: gradiente());

  LinearGradient gradiente() => LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Colors.purple[400], Colors.blue[300], Colors.cyan[300]]);

  boldBranding(String str, {Color color = Colors.white}) =>
      text(str, 55, color, true);

  text(String str, double sz, Color clr, bool bold,
      {String font = 'Montserrat'}) {
    return Text(
      str,
      style: TextStyle(
          color: clr,
          fontSize: sz,
          fontFamily: font,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal),
    );
  }

  txtButton(Function func, String desc, Color backColor, txtColor) {
    return TextButton(
      onPressed: func,
      child: text(desc, 18, txtColor, true),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.only(top: 10, bottom: 10, right: 25, left: 25)),
        backgroundColor: MaterialStateProperty.all<Color>(backColor),
      ),
    );
  }
}
