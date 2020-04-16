import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/ui/AddTaskPage.dart';
import 'package:todo/ui/home/AllTasksView.dart';
import 'package:todo/ui/home/CompletedTasksView.dart';
import 'package:todo/ui/home/OngoingTasksView.dart';
import 'package:todo/util/Navigation.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Your Tasks"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                onAddClick(context);
              },
            ),
          ],
          bottom: TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(text: 'All'),
              Tab(text: 'Ongoing'),
              Tab(text: 'Completed'),
            ],
          )),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          AllTasksView(),
          OngoingTasksView(),
          CompletedTasksView()
        ],
      ),
    );
  }

  void onAddClick(BuildContext context) =>
      Navigation.navigate(context, (context) => AddTaskPage());
}
