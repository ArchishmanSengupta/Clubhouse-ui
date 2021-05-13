import 'package:blackvector/pages/welcome/lobby/widgets/follow_item.dart';
import 'package:blackvector/util/data.dart';
import 'package:blackvector/util/style.dart';
import 'package:flutter/material.dart';

class FollowersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildAvailableChatTitle(),
          buildAvailableChatList(context),
        ],
        
      ),
    );
  }

  Widget buildAvailableChatTitle(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
      Text('AVAILABLE TO CHAT',
      style: TextStyle(color: Style.DarkBrown,
      fontWeight: FontWeight.bold,
      fontSize: 15,
      
      ),
      ),
    Expanded(
        child: Container(
          height: 1,
          color: Style.DarkBrown,
        ),
      ),
    ],
    );
  }

  Widget buildAvailableChatList(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder:(lc,index){
      return FollowItem(
        user: users[index],
        onProfileTap: (){},
        onRoomButtonTap: (){},
      );
    },
    itemCount: users.length,

    );

  }
}