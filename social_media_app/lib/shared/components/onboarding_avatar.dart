import 'package:flutter/material.dart';

class OnboardingAvatar extends StatelessWidget {
  final Widget? child;
  const OnboardingAvatar({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: 48,
            backgroundColor: Color(0xFFE5E5E5),
            child: child ?? Icon(Icons.person, size: 56, color: Color(0xFF006175)),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: _circle(16),
          ),
          Positioned(
            top: 0,
            right: 24,
            child: _circle(10),
          ),
          Positioned(
            bottom: 16,
            left: 32,
            child: _circle(12),
          ),
          Positioned(
            bottom: 8,
            right: 16,
            child: _circle(14),
          ),
        ],
      ),
    );
  }

  Widget _circle(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Color(0xFF006175),
        shape: BoxShape.circle,
      ),
    );
  }
} 