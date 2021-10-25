import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instancia = AppController();

  bool isdarktheme = false;
  changeTheme() {
    isdarktheme = !isdarktheme;
    notifyListeners();
  }
}
