import 'package:flutter/cupertino.dart';

class Iosprovider extends ChangeNotifier {
  bool onOff1 = false;
  bool onOff2 = false;
  bool onOff3 = false;

  void Iosbutton1(bool value) {
    onOff1 = value;
    notifyListeners();
  }

  void Iosbutton2(bool value) {
    onOff2 = value;
    notifyListeners();
  }

  void Iosbutton3(bool value) {
    onOff3 = value;
    notifyListeners();
  }
}
