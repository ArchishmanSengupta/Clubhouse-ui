import 'package:blackvector/models/room.dart';
import 'package:blackvector/pages/welcome/lobby/widgets/room_card.dart';
import 'package:blackvector/pages/welcome/lobby/widgets/schedule_card.dart';
import 'package:blackvector/util/data.dart';
import 'package:flutter/material.dart';

class LobbyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        buildScheduleCard(),
        buildRoomCard(rooms[0]),
      ],
      
    );
  }

  Widget buildScheduleCard(){
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 18,
      ),
      child: ScheduleCard(),
    );
  }

  Widget buildRoomCard(Room room){
    return Container(
      child: RoomCard(
        room: room,
        ),
    );
  }
}