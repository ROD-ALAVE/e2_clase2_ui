import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Agenda Escolar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección: Próximos Vencimientos
            _buildSectionTitle('Próximos Vencimientos'),
            const SizedBox(height: 12),
            _buildDueCard(
              title: 'EXAMEN',
              subtitle: 'Matemáticas: "Álgebra Lineal"',
              date: 'Vence: 25 May, 10:00',
              daysLeft: '1 día',
              color: Colors.red,
              icon: Icons.school,
            ),
            const SizedBox(height: 10),
            _buildDueCard(
              title: 'TAREA',
              subtitle: 'Historia: "Resumen Revolución"',
              date: 'Vence: 26 May, 23:59',
              daysLeft: '2 días',
              color: Colors.orange,
              icon: Icons.assignment,
            ),
            const SizedBox(height: 10),
            _buildDueCard(
              title: 'PRÁCTICA',
              subtitle: 'Física: "Leyes de Newton"',
              date: 'Vence: 28 May, 12:00',
              daysLeft: '4 días',
              color: Colors.green,
              icon: Icons.science,
            ),

            const SizedBox(height: 24),

            // Sección: Estado de Tareas
            _buildSectionTitle('Estado de Tareas'),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _buildStatusCard('Pendientes', '5', Colors.orange),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildStatusCard('Completadas', '3', Colors.green),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildStatusCard('Urgente', '1', Colors.red),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Sección: Mi Agenda Semanal
            _buildSectionTitle('Mi Agenda Semanal'),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  _WeekDay(day: 'MAY', date: '22', isToday: false),
                  _WeekDay(day: 'MAR', date: '23', isToday: true),
                  _WeekDay(day: 'MIÉ', date: '24', isToday: false),
                  _WeekDay(day: 'JUE', date: '25', isToday: false),
                  _WeekDay(day: 'VIE', date: '26', isToday: false),
                  _WeekDay(day: 'SÁB', date: '27', isToday: false),
                  _WeekDay(day: 'DOM', date: '28', isToday: false),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Sección: Tareas Hoy
            _buildSectionTitle('Tareas Hoy'),
            const SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildTodayTask(
                    day: 'MAR 23',
                    tasks: const ['Matemáticas (Examen)', 'Historia (Tarea)'],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildDueCard({
    required String title,
    required String subtitle,
    required String date,
    required String daysLeft,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border(left: BorderSide(color: color, width: 5)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              daysLeft,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusCard(String label, String count, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            count,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTodayTask({
    required String day,
    required List<String> tasks,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Text(
            day,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        ...tasks.map((task) => Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey[200]!),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  task,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const Icon(Icons.check_circle_outline, color: Colors.grey, size: 22),
            ],
          ),
        )),
      ],
    );
  }
}

class _WeekDay extends StatelessWidget {
  final String day;
  final String date;
  final bool isToday;

  const _WeekDay({
    required this.day,
    required this.date,
    required this.isToday,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: TextStyle(
            fontSize: 12,
            color: isToday ? Colors.blue : Colors.grey[600],
            fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: isToday ? Colors.blue : Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              date,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isToday ? Colors.white : Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
  }
}