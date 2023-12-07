import 'package:flutter/foundation.dart';
import 'Task_class.dart';


class TaskData extends ChangeNotifier{
  // make this an empty list
  List <Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy ice-cream'),
    Task(name: 'Buy pizza'),
  ];

  void addTask(String newTaskTitle){
    final newTask = Task(name: newTaskTitle);
    tasks.add(newTask);
    notifyListeners();
  }


}