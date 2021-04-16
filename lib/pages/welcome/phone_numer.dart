import 'package:blackvector/util/style.dart';
import 'package:blackvector/widgets/round_button.dart';
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
            Spacer(),
            buildBottom(),

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
            initialSelection: 'भारत',
            showCountryOnly: false,
            alignLeft: false,
            padding: const EdgeInsets.all(8),
            textStyle: TextStyle(
              fontSize: 20,            ),
          ),
          Expanded(
            key: _formkey,
            child: TextFormField(
              onChanged: (value){
                _formkey.currentState.validate();
              },
              validator: (value){
                if(value.isEmpty)
                {
                  setState(() {
                    onSignupButtonClick=null;
                  });

                  }
                  else
                  {
                    setState(() {
                      onSignupButtonClick = signUp;
                    });
                  }
                  return null;
              },
              controller: _PhoneNumberPageController,
              autocorrect: false,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                hintStyle: TextStyle(fontSize: 20
                ,
                ),
                
                border:InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              keyboardType: TextInputType.numberWithOptions(signed: true,decimal: true,),
              
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            ),
        ],

      ),
    );
  }
  Widget buildBottom(){
    return Column(
      children: [
        Text('By entering your number, you\'re agreeing to out\nTerms or Services and Privacy Policy. Thanks!',
        style: TextStyle(
          color: Colors.grey,
        ),
        ),
        SizedBox(
          height:30
        ),
        RoundButton(
          color: Style.AccentBlue,
          disabledColor: Style.AccentBlue.withOpacity(0.3),
          minimumWidth: 230,
          onPressed: onSignupButtonClick,
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Next',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
                Icon(Icons.arrow_right_alt,
                color: Colors.white,)
              ],
            ),
          ),
        ),
      ],
    );
  }
  signUp(){

  }
}