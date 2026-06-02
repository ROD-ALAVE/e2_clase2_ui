import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,   // Espacio horizontal
      runSpacing: 8, // Espacio vertical
      children: [
        Container(color: Colors.teal[100], padding: EdgeInsets.all(12), child: Text('Tag 1')),
        Container(color: Colors.teal[200], padding: EdgeInsets.all(12), child: Text('Tag 2')),
        Container(color: Colors.teal[300], padding: EdgeInsets.all(12), child: Text('Tag 3')),
        Container(color: Colors.teal[400], padding: EdgeInsets.all(12), child: Text('Tag 4')),
        Container(color: Colors.teal[500], padding: EdgeInsets.all(12), child: Text('Tag 5 con texto largo')),
        Container(color: Colors.teal[600], padding: EdgeInsets.all(12), child: Text('Tag 6')),
        Container(color: Colors.teal[700], padding: EdgeInsets.all(12), child: Text('Tag 7')),
        Container(color: Colors.teal[800], padding: EdgeInsets.all(12), child: Text('Tag 8')),
      ],
    );
  }
}