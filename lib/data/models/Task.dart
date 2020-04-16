import 'package:flutter/cupertino.dart';

class Task {
  String title;
  bool completed;
  int timestamp;

  Task({@required this.title, this.completed, this.timestamp});

  void toggleComplete() {
    completed = !completed;
  }
}
