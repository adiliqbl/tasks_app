import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/data/models/Task.dart';
import 'package:todo/data/providers/Providers.dart';
import 'package:todo/util/Navigation.dart';

class AddTaskPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final textController = TextEditingController();
  bool isComplete = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextField(controller: textController),
                  CheckboxListTile(
                    value: isComplete,
                    onChanged: (checked) => setState(() {
                      isComplete = checked;
                    }),
                    title: Text('Done'),
                  ),
                  RaisedButton(
                    child: Text('Add'),
                    onPressed: onClick,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void onClick() {
    final String text = textController.text;
    final bool completed = isComplete;
    if (text.isNotEmpty) {
      Providers.tasksProvider(context).addTodo(Task(
        title: text,
        completed: completed,
      ));
      Navigation.goBack(context);
    }
  }
}
