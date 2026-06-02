import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final Widget widgetExample;

  const DetailScreen({
    super.key,
    required this.title,
    required this.widgetExample,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        // Botón de volver automático (back button)
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // NAVEGACIÓN: pop para volver atrás
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tarjeta informativa
              Card(
                color: Colors.blue[50],
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '📘 ¿Qué es $title?\n\n$descripcion',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 24),
              // Título del ejemplo
              Text(
                'Ejemplo visual:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              // Zona del ejemplo (centrada)
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Center(
                    child: widgetExample,
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Botón alternativo para volver
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                label: Text('Volver al menú'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700],
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String get descripcion {
    switch (title) {
      case 'Column':
        return 'Organiza sus hijos VERTICALMENTE (arriba → abajo). Ideal para formularios o layouts en columna.';
      case 'Row':
        return 'Organiza sus hijos HORIZONTALMENTE (izquierda → derecha). Ideal para barras de botones o elementos en fila.';
      case 'Column + Row anidados':
        return 'Combina filas dentro de columnas para crear layouts COMPLEJOS como cuadrículas o tablas.';
      case 'GridView':
        return 'Crea una CUADRÍCULA (filas y columnas). Perfecto para galerías de fotos o catálogos de productos.';
      case 'ListView':
        return 'Muestra una LISTA SCROLLEABLE de elementos. Ideal para feeds, chats o menús largos.';
      case 'Stack':
        return 'SUPERPONE elementos uno sobre otro. Útil para botones flotantes, badges o imágenes con texto encima.';
      case 'Wrap':
        return 'Similar a Row pero con SALTO DE LÍNEA automático cuando no hay espacio. Perfecto para nubes de etiquetas.';
      default:
        return 'Ejemplo práctico de este widget en Flutter.';
    }
  }
}