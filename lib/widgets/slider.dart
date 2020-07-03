import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ui_slider/notifiers/slider_dots_notifier.dart';

//Slide Widget
class SliderView extends StatefulWidget {

  final List<Widget> widgets;

  const SliderView({
    @required this.widgets,
  });

  @override
  _SliderViewState createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {

  final pageViewController = new PageController();

  List<Widget> widgets;
  
  @override
  void initState() {

    widgets = widget.widgets;

    //This method should be reload if this changes
    pageViewController.addListener(() {
      final position = pageViewController.page;
      Provider.of<SliderNotifierDost>(context, listen: false)
          .setPosition(position);
      //When uses notifierListeners should be 
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: PageView(
          controller: pageViewController,
          children: widgets,
        ),
      );

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }
}

class Slide extends StatelessWidget {
  final String path;

  const Slide(this.path);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(30),
      child: SvgPicture.asset(
        path,
      ),
    );
  }
}
