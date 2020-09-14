import 'package:flutter/material.dart';
import 'helpers/constant.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primarySwatch: Colors.blue,
          fontFamily: 'Poppins',
          textTheme: TextTheme(bodyText1: TextStyle(color: kBodyTextColor))),
      home: HomeScreen(),
    );
  }
}
