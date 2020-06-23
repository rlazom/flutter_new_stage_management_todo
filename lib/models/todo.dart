import 'package:flutter/foundation.dart';

class Todo extends ChangeNotifier {
  String _id = '0';
  String _title = 'titulo';
  bool _done = false;

  Todo(this._id, this._title, this._done);


  String get id => _id;
  String get title => _title;
  bool get done => _done;

  /// Toggles the value of the item and notify to listeners
  void toggle() {
    this._done = !this.done;
    notifyListeners();
  }
}
