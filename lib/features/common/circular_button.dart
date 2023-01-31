import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_app/configs/app_colors.dart';

class CircularButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CircularButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryColor,
        ),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.brown[50],
        ),
      ),
    );
  }
}
