import 'dart:collection';

import 'package:todo/data/models/Task.dart';
import 'package:todo/data/providers/TaskModel.dart';
import 'package:todo/ui/home/BaseTasksView.dart';

class AllTasksView extends BaseTasksView {
  @override
  UnmodifiableListView<Task> getTasks(TaskModel tasks) => tasks.allTasks;
}
