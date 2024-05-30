import 'package:flutter/material.dart';

class TextUtil {
  static Widget heading1(String text, Color? color) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        text,
        style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: color),
      ),
    );
  }

  static Widget heading2(String text, Color? color) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        text,
        style:
            TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: color),
      ),
    );
  }

  static Widget heading3(String text, Color? color) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        text,
        style:
            TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: color),
      ),
    );
  }

  static Widget heading4(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: color),
    );
  }

  static Widget heading5(String text, Color? color) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: color),
    );
  }

  static Widget headingCard1(String text, Color? color) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        text,
        style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: color),
      ),
    );
  }

  static Widget headingCard2(String text, Color? color) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: FontWeight.normal, fontSize: 9, color: color),
    );
  }
}
