

import 'package:flutter/foundation.dart';

class TabManager extends ChangeNotifier {
  //value is in here
  //밸류가 변경되었으니 알려주는 역할
  int selectedTab = 0;

  void goToTab(int index) {
    selectedTab = index;
    notifyListeners(); // value가 변경되었으니 알려주는 역할
  }

  void goToRecipes() {
    selectedTab = 1;
    notifyListeners();
  }
}