import 'package:flutter/material.dart';
import 'package:flutter_ui_slider/widgets/slider.dart';
import 'package:flutter_ui_slider/widgets/slider_view_widget.dart';

class HomeScreen extends StatelessWidget {

  final List<Widget> widgets = [
    Slide('assets/slide-1.svg'),
    Slide('assets/slide-2.svg'),
    Slide('assets/slide-3.svg'),
    Slide('assets/slide-4.svg'),
    Slide('assets/slide-5.svg'),
  ];
  

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SliderViewWidget(widgets,color: Colors.blue,),
      );

  

}
