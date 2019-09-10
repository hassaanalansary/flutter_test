import 'package:flutter/material.dart';

import './task.dart';
import './new_task.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> tasks = ['run', 'pray', 'eat'];

  void _addNewTask(String taskText) {
    setState(() {
      tasks.add(taskText);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                NewTask(_addNewTask),
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      return Task(tasks[index]);
                    },
                    itemCount: tasks.length,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
