import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
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
          Expanded(child:buildContent(),
          ),

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text('We\'re working hard to get Clubhouse ready for launch! While we wrap up the finishing touches, we\'re adding people gradually to make sure nothing breaks :)',
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
      Text('🏠Paul, Rohan & the clubhouse team ', style:TextStyle(
            fontSize:15,
      ))

    ],);
  }

}