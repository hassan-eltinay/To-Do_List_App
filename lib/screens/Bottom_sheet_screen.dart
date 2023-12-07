import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/Task_data.dart';


class BottomSheetScreen extends StatelessWidget {

  late  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Text('Add Task',
              // style: TextStyle(
              //   color: Colors.lightBlueAccent,
              //   fontSize: 30,
              //   fontWeight: FontWeight.bold
              // ),
              // ),
              TextField(
                autofocus: true,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  backgroundColor: Colors.white,
                ),
                onChanged: (newText){
                  newTaskTitle = newText;
                },
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center ,
                  width: 500,
                  color: Colors.lightBlueAccent,
                    padding:const EdgeInsets.all(20),
                    child: Text(
                      'Add Task',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
