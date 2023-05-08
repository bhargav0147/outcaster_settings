import 'package:flutter/cupertino.dart';

class SettingProvider extends ChangeNotifier
{
  bool lock=false;
  bool finger=false;
  bool pass=false;

  void lockcall(bool i)
  {
    lock=i;
    notifyListeners();
  }
  void fingercall(bool i)
  {
    finger=i;
    notifyListeners();
  }
  void passcall(bool i)
  {
    pass=i;
    notifyListeners();
  }
}