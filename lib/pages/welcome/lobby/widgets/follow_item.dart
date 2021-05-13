import 'package:blackvector/models/user.dart';
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
      children: [
        RoundImage(
          path: user.profileImage,
          borderRadius: 15,
        ),
      ],
      
    );
  }
}