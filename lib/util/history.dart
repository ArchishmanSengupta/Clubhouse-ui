import 'package:blackvector/pages/welcome/phone_numer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class History{
  static Future pushPage(BuildContext context,Widget page) async
  {
    return await Navigator.push(context, MaterialPageRoute(builder: (context)
    {
              return page;
            },
            ),
            );
  }
}