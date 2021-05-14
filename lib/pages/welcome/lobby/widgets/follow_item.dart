import 'package:blackvector/models/user.dart';
import 'package:blackvector/util/style.dart';
import 'package:blackvector/widgets/round_button.dart';
import 'package:blackvector/widgets/round_image.dart';
import 'package:flutter/material.dart';

class FollowItem extends StatelessWidget {
  final User user;
  final Function onProfileTap;
  final Function onRoomButtonTap;

  const FollowItem({
    Key key, 
    this.user, 
    this.onProfileTap, 
    this.onRoomButtonTap
    }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      GestureDetector(
        onTap: onProfileTap,
          child: RoundImage(
            path: user.profileImage,
            borderRadius: 15,
          ),
        ),
        SizedBox(width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              ),
              Text('${user.lastAccessTime}',
              style: TextStyle(
             
                color: Style.DarkBrown,
              ))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
          ),
          height: 25,
          child: RoundButton(
            onPressed: onRoomButtonTap,
            color: Style.LightGreen,
            child: Row(
              children: [
                Text('+ Room', style:TextStyle(
                  color: Style.AccentGreen,
                ),),
                Icon(Icons.lock, color: Style.AccentGreen, size: 15)
              ],
            ),
          ),
        )
      ],
      
    );
  }
}