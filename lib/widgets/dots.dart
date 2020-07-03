import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ui_slider/notifiers/slider_dots_notifier.dart';

class DotsSpace extends StatelessWidget {
  const DotsSpace({
    @required this.dots,
    @required this.colorDot,
  });

  final Color colorDot;
  final int dots;

  @override
  Widget build(BuildContext context) => Container(
      width: double.infinity,
      height: 75,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [for (int i = 0; i < dots; i++) _Dot(i, colorDot)]));
}

class _Dot extends StatelessWidget {
  
  const _Dot(this.position, this.color);

  final Color color;
  final int position;

  @override
  Widget build(BuildContext context) {
    //When the notifierListeners is not called the listen atribute is not necessary set to false
    final currentPostion = Provider.of<SliderNotifierDost>(context).position;

    final Color useColor =
        position > currentPostion - 0.5 && currentPostion > position - 0.5
            ? color
            : Colors.grey;

    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: 15,
      height: 15,
      decoration: BoxDecoration(color: useColor, shape: BoxShape.circle),
    );
  }
}
