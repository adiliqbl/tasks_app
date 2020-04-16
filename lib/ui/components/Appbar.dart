import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  final String title;
  final TabController controller;

  Appbar({@required this.title, this.controller});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(text: 'All'),
            Tab(text: 'Ongoing'),
            Tab(text: 'Complete'),
          ],
        ));
  }
}
