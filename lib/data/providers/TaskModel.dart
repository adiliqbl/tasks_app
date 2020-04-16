import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todo/data/models/Task.dart';

class TaskModel extends ChangeNotifier {
  final List<Task> _tasks = [];

  UnmodifiableListView<Task> get allTasks => UnmodifiableListView(_tasks);

  UnmodifiableListView<Task> get ongoingTasks =>
      UnmodifiableListView(_tasks.where((todo) => !todo.completed));

  UnmodifiableListView<Task> get completedTasks =>
      UnmodifiableListView(_tasks.where((todo) => todo.completed));

  void addTodo(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTodo(Task task) {
    final taskIndex = _tasks.indexOf(task);
    _tasks[taskIndex].toggleComplete();
    notifyListeners();
  }

  void deleteTodo(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
