import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // Espacio uniforme
      crossAxisAlignment: CrossAxisAlignment.center,     // Centrado vertical
      children: [
        Container(
          color: Colors.green[100],
          padding: EdgeInsets.all(16),
          child: Text('Izquierda'),
        ),
        Container(
          color: Colors.green[200],
          padding: EdgeInsets.all(16),
          child: Text('Centro'),
        ),
        Container(
          color: Colors.green[300],
          padding: EdgeInsets.all(16),
          child: Text('Derecha'),
        ),
      ],
    );
  }
}