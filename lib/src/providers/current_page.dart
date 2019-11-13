import 'package:flutter/foundation.dart';

class CurrentPage with ChangeNotifier {
  int _index = 0;
  int get index => _index;

  set index(int value) {
    _index = value;
    notifyListeners();
  }
}
