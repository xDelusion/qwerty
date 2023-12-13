import 'package:flutter/material.dart';

class GradeientBackground extends StatelessWidget {
  const GradeientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.cyan.shade50, Colors.orange.shade50])),
    );
  }
}
