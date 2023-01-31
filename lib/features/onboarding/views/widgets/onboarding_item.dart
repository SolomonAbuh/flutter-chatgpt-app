import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_app/models/onboarding_model.dart';

import '../../../../configs/app_colors.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingModel onboardingModel;
  const OnboardingItem({super.key, required this.onboardingModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(300),
                      topRight: Radius.circular(300),
                    ))),
            Positioned(
              bottom: -20,
              child: Image.asset(
                onboardingModel.imageAsset,
                height: 300,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Center(
          child: Text(
            onboardingModel.text,
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.brown[700]),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
