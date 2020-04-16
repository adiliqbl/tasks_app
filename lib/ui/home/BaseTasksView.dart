import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todo/data/models/Task.dart';
import 'package:todo/data/providers/TaskModel.dart';
import 'package:todo/ui/components/TaskList.dart';

/// Consumer makes sure that the [TaskList] is updated everytime
/// [TaskModel.notifyListeners()] is called.
abstract class BaseTasksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Consumer<TaskModel>(
            builder: (context, tasks, child) =>
                TaskList(tasks: getTasks(tasks))));
  }

  UnmodifiableListView<Task> getTasks(TaskModel tasks);
}
