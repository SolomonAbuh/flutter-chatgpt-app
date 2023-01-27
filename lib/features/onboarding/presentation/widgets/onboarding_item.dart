import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_app/features/onboarding/domain/entities/onboarding_model.dart';

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
                    color: Color(0xFF6FA3A3),
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
        Center(child: onboardingModel.infoWidget),
      ],
    );
  }
}
