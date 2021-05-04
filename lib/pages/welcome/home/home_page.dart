import 'package:blackvector/pages/welcome/lobby/followers_page.dart';
import 'package:blackvector/pages/welcome/lobby/lobby_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        children:[
          LobbyPage(),
          FollowersPage(),

        ],
      ),
      
    );
  }
}