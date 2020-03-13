import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/models/list.dart';
import 'package:provider/provider.dart';

import 'list_item.dart';

class List extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    ListModel list = Provider.of<ListModel>(context);

    return ListView.builder(itemBuilder: (context, index) {
      if (index >= list.length) {
        return null;
      }

      return ListItem(index);
    });
  }
}
