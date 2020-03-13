import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/screens/list/list_screen.dart';
import 'package:flutter_to_do_app/theme/theme.dart';

void main() => runApp(ToDoApp());

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      theme: buildTheme(),
      home: ListScreen(),
    );
  }
}


