import 'package:flutter/material.dart';
import 'package:blackvector/pages/welcome/welcome_page.dart';
import 'package:blackvector/util/Style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'BlackVector',
      theme: ThemeData(
        scaffoldBackgroundColor: Style.LightBrown,
        appBarTheme: AppBarTheme(
          color: Style.LightBrown,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        )

      ),
      home: WelcomePage(),
      
    );
    
  }
}