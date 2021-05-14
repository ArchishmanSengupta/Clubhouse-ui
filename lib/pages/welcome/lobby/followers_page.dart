import 'package:blackvector/pages/welcome/home/widgets/profile_page.dart';
import 'package:blackvector/pages/welcome/lobby/widgets/follow_item.dart';
import 'package:blackvector/util/data.dart';
import 'package:blackvector/util/history.dart';
import 'package:blackvector/util/style.dart';
import 'package:flutter/material.dart';

class FollowersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
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
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: FollowItem(
          user: users[index],
          onProfileTap: (){
            History.pushPage(context, ProfilePage(
              profile: users[index],),);
          },
          onRoomButtonTap: (){},
        ),
      );
    },
    itemCount: users.length,

    );

  }
}