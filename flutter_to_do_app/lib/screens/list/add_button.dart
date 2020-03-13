import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Add Task',
      onPressed: () => {},
      child: Icon(Icons.add),
    );
  }
}