import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/models/list.dart';
import 'package:flutter_to_do_app/screens/list/remove_dialog.dart';
import 'package:provider/provider.dart';

class ListItem extends StatelessWidget {
  final int _index;

  ListItem(this._index);

  @override
  Widget build(BuildContext context) {
    ListModel list = Provider.of<ListModel>(context);

    return ListTile(
      title: Text(list.at(_index)),
      onTap: () {
        showDialog(context: context, child: RemoveDialog(_index));
      },
    );
  }
}
