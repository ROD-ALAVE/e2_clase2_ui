import 'package:flutter/material.dart';

class GridExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,  // 2 columnas
      mainAxisSpacing: 8,  // Espacio entre filas
      crossAxisSpacing: 8, // Espacio entre columnas
      childAspectRatio: 1,  // Forma cuadrada
      shrinkWrap: true,      // Para que no se desborde
      children: [
        Container(color: Colors.orange[100], child: Center(child: Text('1'))),
        Container(color: Colors.orange[200], child: Center(child: Text('2'))),
        Container(color: Colors.orange[300], child: Center(child: Text('3'))),
        Container(color: Colors.orange[400], child: Center(child: Text('4'))),
        Container(color: Colors.orange[500], child: Center(child: Text('5'))),
        Container(color: Colors.orange[600], child: Center(child: Text('6'))),
      ],
    );
  }
}