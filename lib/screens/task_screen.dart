import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/screens/Task_list.dart';
import 'Bottom_sheet_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/Task_data.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  Widget buildBottomSheet(BuildContext context) => BottomSheetScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent ,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          showModalBottomSheet(
              context: context,
              builder: buildBottomSheet);
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.fromLTRB(0, 70, 150, 30),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Icon(
                        Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 50,
                      ),
                    ),
                  ),
                  Text('Todoey',
                  style: TextStyle(
                      fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 90, 0),
                    child: Text(
                      '${Provider.of<TaskData>(context).tasks.length} tasks',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(30),
                      topRight: Radius.circular(30)) ,
                  color: Colors.white,
                ),
                child: TaskList(),
              ),
            ),
          ],
        ),


      ),
    );
  }
}
