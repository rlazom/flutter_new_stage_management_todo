import 'package:flutter/foundation.dart';

class Todo extends ChangeNotifier {
  final String _id;
  String _title;
  bool _done;

  Todo({id, title,}): _id = id, _title = title, _done = false;


  String get id => _id;
  String get title => _title;
  bool get done => _done;

  /// Toggles the value of the item and notify to listeners
  void toggle() {
    this._done = !this.done;
    notifyListeners();
  }
}
