import 'package:flutter/material.dart';
class Task extends StatelessWidget {
  final String task;

  Task(this.task);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        child: Card(
          child: Text(
            task,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}