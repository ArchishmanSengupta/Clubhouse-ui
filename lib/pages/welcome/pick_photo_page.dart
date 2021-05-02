import 'package:blackvector/util/style.dart';
import 'package:blackvector/widgets/round_button.dart';
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
            Spacer(),
            buildContents(),
            Spacer(),
            buildBottom(),

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
    return Text(
      'Great! Now add a photo?',
    style: TextStyle(fontSize:25,),
    );

  }

  Widget buildContents(){
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(80),
      ),
      
      child: 
    Icon(
      Icons.add_photo_alternate_outlined,
      size: 100,
      color:Style.AccentBlue,
      ),
      );
  }
  Widget buildBottom() {
    return RoundButton(
      color: Style.AccentBlue,
      minimumWidth: 230,
      disabledColor: Style.AccentBlue.withOpacity(0.3),
      onPressed: () {},
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
  

  
}