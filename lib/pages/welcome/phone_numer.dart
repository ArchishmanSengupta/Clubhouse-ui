import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';


class PhoneNumberPage extends StatefulWidget {
  @override
  _PhoneNumberPageState createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
final _PhoneNumberPageController=TextEditingController();
final _formkey= GlobalKey<FormState>();
Function onSignupButtonClick;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top:30,
          bottom:60,
          ),
          
          child: Column(children: [
            buildTitle(),
            SizedBox(
              height: 50,
            ),
            buildForm(),

          ],),
        ),
      );
  }
  Widget buildTitle(){
    return Text('Enter your Phone Number', style: TextStyle(
              fontSize:25,
            ),
            );
  }

  Widget buildForm(){
    return Container(
      width: 330,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [
          CountryCodePicker(
            initialSelection: 'KR',
            showCountryOnly: false,
            alignLeft: false,
            padding: const EdgeInsets.all(8),
            textStyle: TextStyle(
              fontSize: 20,            ),
          ),
          Expanded(
            key: _formkey,
            child: TextFormField(
              controller: _PhoneNumberPageController,
              autocorrect: false,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                hintStyle: TextStyle(fontSize: 20
                ,
                ),
              ),
            ),
            ),
        ],

      ),
    );
  }
}