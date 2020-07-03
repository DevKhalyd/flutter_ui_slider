import 'package:flutter/material.dart';
import 'package:flutter_ui_slider/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Slider', home: HomeScreen());
  }
  
}
