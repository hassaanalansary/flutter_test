import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  final Function newTaskFunction;

  NewTask(this.newTaskFunction);

  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final newTaskController = TextEditingController();

  void submitTask() {
    final enteredTask = newTaskController.text;
    widget.newTaskFunction(enteredTask);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'New Task'),
              controller: newTaskController,
              onSubmitted: (_) => submitTask(),
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: submitTask,
            ),
          ],
        ),
      ),
    );
  }
}
