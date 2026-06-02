import 'package:flutter/material.dart';

class ListExample extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Elemento ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 8),
          color: Colors.purple[100 * (index % 4 + 1)],
          padding: EdgeInsets.all(12),
          child: Text(items[index]),
        );
      },
    );
  }
}