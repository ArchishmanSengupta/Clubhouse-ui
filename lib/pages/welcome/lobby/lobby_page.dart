import 'package:blackvector/models/room.dart';
import 'package:blackvector/pages/welcome/lobby/widgets/lobby_bottom_sheet.dart';
import 'package:blackvector/pages/welcome/lobby/widgets/room_card.dart';
import 'package:blackvector/pages/welcome/lobby/widgets/schedule_card.dart';
import 'package:blackvector/util/data.dart';
import 'package:blackvector/util/style.dart';
import 'package:blackvector/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class LobbyPage extends StatefulWidget {
  @override
  _LobbyPageState createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  RefreshController _refreshController=RefreshController(
    initialRefresh: false,
  );

  void _onRefresh() async{
    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }
  void _onLoading() async{
    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.loadComplete();

  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SmartRefresher(
          enablePullDown: true,
          controller: _refreshController,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child: ListView.builder(
            padding: const EdgeInsets.only(
              bottom: 80,
              left: 20,
              right:20,
            ),
            itemBuilder: (tc,index){
              if(index==0){
                return buildScheduleCard();
              }
              return buildRoomCard(rooms[index-1]);
          },
          itemCount: rooms.length+1,
          ),
        ),
        buildGradientContainer(),
        buildStartRoomBottom(),
        
        // buildScheduleCard(),
        // buildRoomCard(rooms[0]),
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
      margin: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: RoomCard(
        room: room,
        ),
    );
  }
  Widget buildGradientContainer(){
    return Container(
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Style.LightBrown.withOpacity(0.2),
          Style.LightBrown,
        ]
      ),
    ),
    );
    }

    Widget buildStartRoomBottom(){
      return Container(
        margin: const EdgeInsets.only(bottom: 20,),
        child: RoundButton(
          onPressed: (){
            showBottomSheet();
            },
          color: Style.AccentGreen,
          text: '+ Start a room',
          
        )
      );
    }
    showBottomSheet(){
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            ),
            ),
        builder: (context){
        return Wrap(
          children: [
          LobbyBottomSheet(
            onButtonTap: (){
              Navigator.pop(context);
            },
          )
        ],);
      }
      );

    }
}