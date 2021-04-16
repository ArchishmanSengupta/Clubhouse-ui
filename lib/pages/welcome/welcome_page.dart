import 'package:blackvector/pages/welcome/phone_numer.dart';
import 'package:blackvector/util/history.dart';
import 'package:blackvector/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:blackvector/util/style.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          left: 50,
          right: 50,
          bottom:60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
          buildTitle(),
          SizedBox(
            height: 40,
          ),
          
          Expanded(
            child:buildContent(),
            
          ),
          buildBottom(context),

          ],
        )
      ),
      
    );
  }

  Widget buildTitle(){
    return Text('🎉Welcome!', style: TextStyle(
              fontSize:25,
            ),
            );
  }


  Widget buildContent(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('We\'re working hard to get BlackVector ready for launch! While we wrap up the finishing touches, we\'re adding people gradually to make sure nothing breaks :)',
        style:TextStyle(
          height: 1.8,
          fontSize: 15,
        ),
        ),
        SizedBox(
          height: 40,
        ),
        Text('If you don\'t yet have an invite, you can reserve your username now and we\'ll get you on very soon. We are so grateful you\'re here and can\'t wait to have you join! 🙏',
        style:TextStyle(
          height: 1.8,
          fontSize: 15,
        ),
        ),
        SizedBox(
          height: 40,
        ),
        Text('🏠Archie, Harry & the BlackVector team ', style:TextStyle(
              fontSize:15,
        ))

      ],),
    );
  }

  Widget buildBottom(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RoundButton(
          color: Style.AccentBlue,
          onPressed:(){
            History.pushPage(context, PhoneNumberPage());
            // Navigator.push(context, MaterialPageRoute(builder: (context){
            //   return PhoneNumberPage();
            // },
            // ),
            // );
          },
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Get an Username',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Have an invite text?',
            style: TextStyle(
              color: Style.AccentBlue,
            ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
            'Sign in',style: TextStyle(
              color: Style.AccentBlue,
              fontWeight: FontWeight.bold,
            )
            ),
            Icon(Icons.arrow_right_alt,
            color: Style.AccentBlue,),
          ]
        )
      ],
    );
  }

}