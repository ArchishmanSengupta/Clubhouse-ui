import 'package:blackvector/widgets/round_button.dart';
import 'package:flutter/material.dart';

class FullNamePage extends StatefulWidget {
  @override
  _FullNamePageState createState() => _FullNamePageState();
}

class _FullNamePageState extends State<FullNamePage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _firstNameFormKey = GlobalKey<FormState>();
  final _lastNameFormKey = GlobalKey<FormState>();

  Function onNextButtonClick;

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
        child: Column(children: [
          buildTitle(),
          SizedBox(
            height:50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: buildForm(),
          ),
        ],)
      )

      
    );
  }
  Widget buildTitle() {
    return Text(
      'What\'s your full name?',
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }

  Widget buildForm() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Form(
                  key: _firstNameFormKey,
                  child: TextFormField(
                    onChanged: (value) {
                      _firstNameFormKey.currentState.validate();
                    },
                  
                    controller: _firstNameController,
                    autocorrect: false,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: ' First Name',
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
          ),
        ),
        SizedBox(width:10),
        Expanded(
          child: Container(
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Form(
                  key: _lastNameFormKey,
                  child: TextFormField(
                    onChanged: (value) {
                      _lastNameFormKey.currentState.validate();
                    },
                  
                    controller: _lastNameController,
                    autocorrect: false,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: ' Last Name',
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
          ),
        ),
      ],

    );
  }

  Widget buildBottom(){
    return RoundButton(
      child: Container(
        
      ),
      
    );
  }
}