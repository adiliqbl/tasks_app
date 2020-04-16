import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/data/providers/TaskModel.dart';
import 'package:todo/ui/home/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskModel(),
      child: MaterialApp(
        title: 'Tasks',
        theme: ThemeData.light(),
        home: HomePage(),
      ),
    );
  }
}
