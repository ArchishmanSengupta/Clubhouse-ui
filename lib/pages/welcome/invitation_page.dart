import 'package:blackvector/pages/welcome/full_name_page.dart';
import 'package:blackvector/util/history.dart';
import 'package:blackvector/util/style.dart';
import 'package:blackvector/widgets/round_button.dart';
import 'package:blackvector/widgets/round_image.dart';
import 'package:flutter/material.dart';

class InvitationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 60,
        ),
        child: Column(
          children: [
            buildTitle(),
            SizedBox(
              height: 50,
            ),
          Expanded(child: buildContents(),),
            buildBottom(context),
          ],
        ),
      ),
    );
  }
  Widget buildTitle() {
    return Text(
      '🎉 Welcome to Clubhouse.\nYou\'re Archie\'s friend!',
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }

  Widget buildContents() {
    return SingleChildScrollView(
      child: Column(
        children: [
          RoundImage(
            path:'images/profile1.jpg',
            width: 200,
            height: 200,),
          SizedBox(
            height:10,
          ),
          Text('Sheldon Cooper',style: TextStyle(fontWeight: FontWeight.bold),
          ),

        ],
      ),
    );
  }

  Widget buildBottom(BuildContext context){
    return Column(
      children: [
        Text('Let\'s set up your profile?',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        
        ),
        SizedBox(height: 30,),
        RoundButton(
          onPressed: (){},
          minimumWidth: 230,
          color: Style.AccentBlue,
          text: '🐋 Import from whale',
          fontSize: 20,
          ),
          SizedBox(height:20),
          GestureDetector(
            onTap: (){
              History.pushPage(context,FullNamePage());
              
            },
            child: Text('Enter my info manually',style: TextStyle(
              color: Style.AccentBlue),),
          )
      ],
    );

  }
}