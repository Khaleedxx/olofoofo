import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Floating circles background
          Positioned.fill(
            child: CustomPaint(
              painter: _FloatingCirclesPainter(),
            ),
          ),
          // Centered logo
          Center(
            child: Text(
              'Olófoófó',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FloatingCirclesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = const Color(0xFF006175);
    // Example circle positions (adjust as needed)
    final circles = [
      Offset(size.width * 0.2, size.height * 0.2),
      Offset(size.width * 0.8, size.height * 0.3),
      Offset(size.width * 0.5, size.height * 0.7),
      Offset(size.width * 0.3, size.height * 0.8),
      Offset(size.width * 0.7, size.height * 0.15),
    ];
    final radii = [24.0, 16.0, 20.0, 12.0, 18.0];
    for (int i = 0; i < circles.length; i++) {
      canvas.drawCircle(circles[i], radii[i], paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 