import 'package:flutter/material.dart';

import 'item_input_field.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Item"),
      ),
      body: ItemInputField(),
    );
  }
}
