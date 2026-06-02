import 'package:flutter/material.dart';
import '../widget/column_example.dart';
import '../widget/grid_example.dart';
import '../widget/list_example.dart';
import '../widget/row_example.dart';
import '../widget/stack_example.dart';
import '../widget/wrap_example.dart';
import 'detail_screen.dart';


class HomeScreen extends StatelessWidget {
  // Lista de temas disponibles (título + widget asociado)
  final List<Map<String, dynamic>> _temas = [
    {
      'titulo': 'Column',
      'descripcion': 'Disposición vertical de widgets',
      'widget': ColumnExample(),
    },
    {
      'titulo': 'Row',
      'descripcion': 'Disposición horizontal de widgets',
      'widget': RowExample(),
    },
    {
      'titulo': 'Column + Row anidados',
      'descripcion': 'Combinación vertical y horizontal',
      'widget': ColumnRowExample(),
    },
    {
      'titulo': 'GridView',
      'descripcion': 'Cuadrícula (grid) de widgets',
      'widget': GridExample(),
    },
    {
      'titulo': 'ListView',
      'descripcion': 'Lista scrolleable',
      'widget': ListExample(),
    },
    {
      'titulo': 'Stack',
      'descripcion': 'Elementos superpuestos',
      'widget': StackExample(),
    },
    {
      'titulo': 'Wrap',
      'descripcion': 'Flujo adaptable (wrap)',
      'widget': WrapExample(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aprendiendo Widgets'),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: _temas.length,
        itemBuilder: (context, index) {
          final tema = _temas[index];
          return Card(
            margin: EdgeInsets.only(bottom: 12),
            elevation: 2,
            child: ListTile(
              leading: Icon(
                _getIconForIndex(index),
                color: Colors.blue[700],
                size: 32,
              ),
              title: Text(
                tema['titulo'],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(tema['descripcion']),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // NAVEGACIÓN: push a DetailScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: tema['titulo'],
                      widgetExample: tema['widget'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  // Icono según el índice (solo para hacer más visual el menú)
  IconData _getIconForIndex(int index) {
    switch (index) {
      case 0: return Icons.vertical_align_center;
      case 1: return Icons.horizontal_rule;
      case 2: return Icons.grid_3x3;
      case 3: return Icons.grid_on;
      case 4: return Icons.list;
      case 5: return Icons.layers;
      case 6: return Icons.wrap_text;
      default: return Icons.widgets;
    }
  }
}

// Widget extra: Column + Row anidados
class ColumnRowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Primera fila
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(color: Colors.blue[100], padding: EdgeInsets.all(20), child: Text("1")),
            Container(color: Colors.blue[200], padding: EdgeInsets.all(20), child: Text("2")),
            Container(color: Colors.blue[300], padding: EdgeInsets.all(20), child: Text("3")),
          ],
        ),
        SizedBox(height: 20),
        // Segunda fila
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(color: Colors.green[100], padding: EdgeInsets.all(20), child: Text("A")),
            Container(color: Colors.green[200], padding: EdgeInsets.all(20), child: Text("B")),
            Container(color: Colors.green[300], padding: EdgeInsets.all(20), child: Text("C")),
          ],
        ),
      ],
    );
  }
}