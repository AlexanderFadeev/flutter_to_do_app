import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/models/list.dart';
import 'package:provider/provider.dart';

class RemoveDialog extends StatelessWidget {
  final int _index;

  RemoveDialog(this._index);

  @override
  Widget build(BuildContext context) {
    var list = Provider.of<ListModel>(context, listen: false);

    return AlertDialog(
      title: Text("Remove ${list.at(_index)} from list?"),
      actions: <Widget>[
        FlatButton(
          child: Text("No"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text("Yes"),
          onPressed: () {
            list.removeAt(_index);
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
