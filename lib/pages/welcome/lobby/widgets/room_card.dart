import 'package:blackvector/models/room.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({Key key, this.room}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),

      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(room.title,style:
          TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          ),
          SizedBox(height: 15,),
          Row(
            children: [

            ],
          )

        ],
      ),
      
    );
  }
  
}