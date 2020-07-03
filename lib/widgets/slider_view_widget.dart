import 'package:flutter/material.dart';
import 'package:flutter_ui_slider/notifiers/slider_dots_notifier.dart';
import 'package:flutter_ui_slider/widgets/slider.dart';
import 'package:provider/provider.dart';

import 'dots.dart';

class SliderViewWidget extends StatelessWidget {

  final List<Widget> widgets;
  final Color color;

  const SliderViewWidget(this.widgets, {this.color = Colors.pink});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (_) => SliderNotifierDost(),
      child: Column(
        children: [
          Expanded(
              child: SliderView(
            widgets: widgets,
          )),
          DotsSpace(
            dots: widgets.length,
            colorDot: color,
          )
        ],
      ));
}
