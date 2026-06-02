import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,  // Centra verticalmente
      crossAxisAlignment: CrossAxisAlignment.center, // Centra horizontalmente
      children: [
        Container(
          color: Colors.blue[100],
          padding: EdgeInsets.all(16),
          child: Text('Widget 1 (arriba)'),
        ),
        SizedBox(height: 8), // Espaciador
        Container(
          color: Colors.blue[200],
          padding: EdgeInsets.all(16),
          child: Text('Widget 2 (medio)'),
        ),
        SizedBox(height: 8),
        Container(
          color: Colors.blue[300],
          padding: EdgeInsets.all(16),
          child: Text('Widget 3 (abajo)'),
        ),
      ],
    );
  }
}