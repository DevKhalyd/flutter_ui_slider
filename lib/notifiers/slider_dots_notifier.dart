import 'package:flutter/widgets.dart';

class SliderNotifierDost extends ChangeNotifier {

  double _currentPosition = 0;
  double get position => _currentPosition;


  void setPosition(double position) {
    _currentPosition = position;
    notifyListeners();
  }





}
