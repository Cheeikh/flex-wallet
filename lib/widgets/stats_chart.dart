import 'package:flutter/material.dart';

class StatsChart extends StatelessWidget {
  final List<double> data;
  final List<String> labels;
  final Color color;
  final double height;

  const StatsChart({
    super.key,
    required this.data,
    required this.labels,
    required this.color,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.all(16),
      child: CustomPaint(
        size: Size.infinite,
        painter: ChartPainter(
          data: data,
          labels: labels,
          color: color,
        ),
      ),
    );
  }
}

class ChartPainter extends CustomPainter {
  final List<double> data;
  final List<String> labels;
  final Color color;

  ChartPainter({
    required this.data,
    required this.labels,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Implémentation basique du graphique
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final double maxValue = data.reduce((curr, next) => curr > next ? curr : next);
    final double width = size.width - 32;
    final double height = size.height - 32;
    final double stepX = width / (data.length - 1);
    final double stepY = height / maxValue;

    final path = Path();
    path.moveTo(0, height - (data[0] * stepY));

    for (int i = 1; i < data.length; i++) {
      path.lineTo(i * stepX, height - (data[i] * stepY));
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
