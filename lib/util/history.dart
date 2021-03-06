import 'package:blackvector/pages/welcome/phone_numer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class History {
  static Future pushPage(BuildContext context, Widget page) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return page;
      }),
    );
  }

  static Future pushPageUntil(BuildContext context, Widget page) async {
    return await Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) {
        return page;
      }),
          (Route<dynamic> route) => false,
    );
  }

  static Future pushPageReplacement(BuildContext context, Widget page) async {
    return await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) {
        return page;
      }),
    );
  }
}