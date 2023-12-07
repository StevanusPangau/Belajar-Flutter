import 'package:basics/presentation/list/widget/list_item.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _exampleList = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('List Screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
              itemCount: _exampleList.length,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemBuilder: (context, index) {
                return ListItem(title: _exampleList[index], index: index);
              }),
        ));
  }
}
