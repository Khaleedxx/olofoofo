import 'package:flutter/material.dart';

class OTPInputField extends StatelessWidget {
  final List<TextEditingController>? controllers;
  const OTPInputField({Key? key, this.controllers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (i) {
        return Container(
          width: 56,
          height: 56,
          margin: EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            color: Color(0xFF006175),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: TextField(
              controller: controllers != null ? controllers![i] : null,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
              maxLength: 1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: '',
              ),
            ),
          ),
        );
      }),
    );
  }
} 