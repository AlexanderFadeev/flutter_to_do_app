import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/models/list.dart';
import 'package:provider/provider.dart';

class ItemInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        hintText: "Type something...",
        contentPadding: EdgeInsets.all(16),
      ),
      onSubmitted: (text) => _onSubmitted(context, text),
    );
  }

  _onSubmitted(context, text) {
    if (text.isEmpty) {
      return;
    }

    var list = Provider.of<ListModel>(context, listen: false);
    list.add(text);
    Navigator.of(context).pop();
  }
}
