import 'package:flutter/material.dart';

class ListModel extends ChangeNotifier {
  List<String> _items = [];

  String at(int index) {
    return _items[index];
  }

  add(String item) {
    _items.add(item);
    notifyListeners();
  }

  get length {
    return _items.length;
  }
}
