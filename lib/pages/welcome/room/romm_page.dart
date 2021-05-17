import 'package:blackvector/models/room.dart';
import 'package:blackvector/pages/welcome/home/widgets/profile_page.dart';
import 'package:blackvector/util/history.dart';
import 'package:blackvector/widgets/round_image.dart';
import 'package:flutter/material.dart';
class RoomPage extends StatelessWidget {
  final Room room;

  const RoomPage({Key key, this.room}) : super(key: key);

  get myProfile => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
          IconButton(
            icon: Icon(Icons.keyboard_arrow_down,),
            iconSize: 30,
            onPressed: (){
              Navigator.pop(context);
            }
            ),
            Text('All Rooms', 
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            ),
            Spacer(),
        //     GestureDetector(
        //       onTap:(){
        //       History.pushPage(context, 
        //       ProfilePage(profile: myProfile,));
        //       },
        //       // child: RoundImage(path: 
        //       // myProfile.profileImage,
        //       // width: 40,
        //       // height: 40,
        //       // ),
        // ),
          ],
      )
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )
        ),
        child: Stack(

        )
      ,)
    );
  }
}