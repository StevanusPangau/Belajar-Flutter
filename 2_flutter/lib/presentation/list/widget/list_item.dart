import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String title;
  final int index;
  const ListItem({super.key, required this.title, required this.index});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
          title: Text(widget.title),
          subtitle: Text('Item Number ${widget.index}'),
          leading: Checkbox(
            value: _isSelected,
            onChanged: (value) {
              setState(() {
                _isSelected = value ?? false;
              });
            },
          )),
    );
  }
}
