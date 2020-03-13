import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/screens/list/add_button.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      floatingActionButton: AddButton(),
    );
  }
}
