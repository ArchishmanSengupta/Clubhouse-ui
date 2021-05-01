import 'package:blackvector/util/style.dart';
import 'package:flutter/material.dart';

class PickPhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [buildActionButton(),]
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 60,
        ),
        child: Column(
          children: [
            buildTitle(),
            buildContents(),

          ],
        ),
      ),
    );
  }

  Widget buildActionButton(){
    return Container(

    );

  }
  Widget buildTitle() {
    return Text('Great! Now add a photo?',
    style: TextStyle(fontSize:25,),
    );

  }

  Widget buildContents(){
    return Container(child: 
    Icon(
      Icons.add_photo_alternate_outlined,
      size: 100,
      color:Style.AccentBlue,
      ),
      );

  }
  
}