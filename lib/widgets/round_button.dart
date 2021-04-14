import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {

  final String text;

  const RoundButton({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle()
      ,
      onPressed: (){}, child: Text(text));

  }
}