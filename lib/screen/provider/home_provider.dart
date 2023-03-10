
import 'package:flutter/material.dart';


class provider extends ChangeNotifier
{
  bool onOff1 = false;
  bool onOff2 = false;
  bool onOff3 = false;

  void button1(bool value)
  {
    onOff1 = value;
    notifyListeners();
  }
  void button2(bool value)
  {
    onOff2 = value;
    notifyListeners();
  }

  void button3(bool value)
  {
    onOff3 = value;
    notifyListeners();
  }
}