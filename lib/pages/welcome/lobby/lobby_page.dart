import 'package:blackvector/pages/welcome/lobby/widgets/schedule_card.dart';
import 'package:flutter/material.dart';

class LobbyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildScheduleCard(),
      ],
      
    );
  }

  Widget buildScheduleCard(){
    return Container(
      child: ScheduleCard(),
    );
  }
}