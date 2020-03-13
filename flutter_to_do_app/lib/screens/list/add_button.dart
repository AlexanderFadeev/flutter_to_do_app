import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/screens/add/add_screen.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Add Task',
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => AddScreen(),
        ));
      },
      child: Icon(Icons.add),
    );
  }
}
