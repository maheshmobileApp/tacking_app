import 'package:flutter/material.dart';

class TasksListScreen extends StatefulWidget {
  const TasksListScreen({ Key? key }) : super(key: key);

  @override
  _TasksListScreenState createState() => _TasksListScreenState();
}

class _TasksListScreenState extends State<TasksListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
      ),
      body: Container(),
    );
  
  }
}