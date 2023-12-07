import 'package:flutter/material.dart';


class listTile extends StatefulWidget {
  late String taskTitle;
  bool isChecked = false;



  listTile({required this.taskTitle, required this.isChecked});

  @override
  State<listTile> createState() => _listTileState();
}

class _listTileState extends State<listTile> {

late int list_index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskTitle,
        style: TextStyle(
          decoration: widget.isChecked? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: widget.isChecked,
        onChanged: (newValue){
          setState(() {
            widget.isChecked = newValue!;
          }); },
      ),
    );

  }
}
