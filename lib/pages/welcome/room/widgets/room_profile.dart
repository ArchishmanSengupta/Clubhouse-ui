import 'Package:flutter/material.dart';
import 'package:blackvector/models/user.dart';
import 'package:blackvector/widgets/round_image.dart';

class RoomProfile extends StatelessWidget {
  final User user;
  final double size;

  const RoomProfile({Key key, this.user, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundImage(
          path: user.profileImage,
          width: size,
          height: size,
        )
      ],
      
    );
  }
}