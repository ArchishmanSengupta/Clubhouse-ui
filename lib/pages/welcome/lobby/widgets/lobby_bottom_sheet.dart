import 'package:blackvector/util/style.dart';
import 'package:flutter/material.dart';

class LobbyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top:10,
        right: 20,
        left: 20,
        bottom: 20,
      ),
      child: Column(children: [
        Container(
          width: 40,
          height: 5,
          decoration: BoxDecoration(color:
          Colors.grey,
          borderRadius: BorderRadius.circular(30),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          alignment: Alignment.centerRight,
          child: Text('+ Add a Topic', style: TextStyle(color: Style.AccentGreen,
          fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ],
      ),
      
    );
  }
}