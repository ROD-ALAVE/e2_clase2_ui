import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Fondo
        Container(
          width: 200,
          height: 200,
          color: Colors.red[100],
          child: Center(child: Text('Fondo')),
        ),
        // Elemento superpuesto (encima)
        Positioned(
          top: 20,
          right: 20,
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.red[400],
            child: Text('Superpuesto'),
          ),
        ),
        // Elemento central
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.red[700],
          child: Text('Centro', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}