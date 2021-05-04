import 'package:blackvector/pages/welcome/home/widgets/home_app_bar.dart';
import 'package:blackvector/pages/welcome/lobby/followers_page.dart';
import 'package:blackvector/pages/welcome/lobby/lobby_page.dart';
import 'package:blackvector/util/data.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeAppBar(
          profile: myProfile,
          onProfileTab: (){},
        ),
      ),
      body: PageView(
        children:[
          LobbyPage(),
          FollowersPage(),

        ],
      ),
      
    );
  }
}