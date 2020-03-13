import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/models/list.dart';
import 'package:provider/provider.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Add Task',
      onPressed: () {
        var list = Provider.of<ListModel>(context, listen: false);
        list.add("Item ${list.length + 1}");
      },
      child: Icon(Icons.add),
    );
  }
}
