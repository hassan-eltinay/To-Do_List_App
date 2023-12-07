import 'package:flutter/material.dart';
import 'package:todoey/models/Task_data.dart';
import 'package:todoey/screens/List_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {


  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var Indexedtask = Provider.of<TaskData>(context).tasks[index];

        return
          listTile(
            taskTitle: Provider.of<TaskData>(context).tasks[index].name,
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
      );
  }
}
