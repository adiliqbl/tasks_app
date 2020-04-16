import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/data/models/Task.dart';
import 'package:todo/data/providers/Providers.dart';

class TaskListItem extends StatelessWidget {
  final Task task;

  TaskListItem({@required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: task.completed,
        onChanged: (bool checked) {
          Providers.tasksProvider(context).toggleTodo(task);
        },
      ),
      title: Text(task.title),
      trailing: IconButton(
        icon: Icon(
          Icons.delete_outline,
          color: Colors.grey,
        ),
        onPressed: () {
          Providers.tasksProvider(context).deleteTodo(task);
        },
      ),
    );
  }
}
