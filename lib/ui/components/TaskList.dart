import 'package:flutter/cupertino.dart';
import 'package:todo/data/models/Task.dart';
import 'package:todo/ui/components/TaskListItem.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;

  TaskList({@required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getTaskItems(),
    );
  }

  List<Widget> getTaskItems() {
    return tasks.map((task) => TaskListItem(task: task)).toList();
  }
}
