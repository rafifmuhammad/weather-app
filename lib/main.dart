import 'package:flutter/material.dart';
import 'package:weather_app_project/page/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: MainPage(),
    );
  }
}