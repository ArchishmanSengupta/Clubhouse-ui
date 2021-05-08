import 'package:blackvector/models/user.dart';
import 'package:blackvector/util/data.dart';
import 'package:blackvector/widgets/round_image.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  final User profile;

  const ProfilePage({
    Key key, 
    this.profile
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.settings_rounded),onPressed: (){},)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children:[
            buildProfile(),
            SizedBox(height: 20,),
            builderInviter(),
          ]
        ),
      )
    );
  }

  Widget buildProfile(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RoundImage(
          path: profile.profileImage,
          width: 100,
          height: 100,
          borderRadius:15,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          profile.name,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )
        ),
        SizedBox(
          height: 5,
        ),
        Text(profile.username,
        style:TextStyle(fontSize: 12,
        fontWeight: FontWeight.normal,
        ),
        ),
        SizedBox(height:15,),
        Row(
          children: [RichText(text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: profile.followers,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ),
              TextSpan(
                text: ' followers  ',
              )
            ],
            style: TextStyle(color: Colors.black,)
          ),
          ),
          SizedBox(height: 20,),
          RichText(text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: profile.following,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
                
              ),

              TextSpan(
                text: ' following',
              )
            ],
            style: TextStyle(color: Colors.black,)
          ),
          ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,),
          child: Text(dummyText,style: TextStyle(
            fontSize: 20,
          )),
        )
      ],
    );
  }

  Widget builderInviter(){
    return Row(
      children: [
        RoundImage(path: 'images/profile.jpg',
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Joined May 2021'),
            SizedBox(height: 3,),
            RichText(text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Nominated By',
              ),
              TextSpan(
                text: ' Archie',
              )
            ],
            style: TextStyle(color: Colors.black,)
          ),
          ),

          ],
        )
      ],

    );
  }
}
