import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF6FA3A3),
      ),
      child: Icon(
        Icons.arrow_forward,
        color: Colors.brown[50],
      ),
    );
  }
}
