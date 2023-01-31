import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_app/configs/app_colors.dart';
import 'package:flutter_chatgpt_app/configs/router.dart';
import 'package:flutter_chatgpt_app/features/chat/views/screen/chat_screen.dart';
import 'package:flutter_chatgpt_app/features/common/circular_button.dart';
import 'package:flutter_chatgpt_app/models/onboarding_model.dart';
import 'package:flutter_chatgpt_app/features/onboarding/views/widgets/onboarding_item.dart';
import 'package:flutter_chatgpt_app/features/onboarding/views/widgets/page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static const String route = '/onboarding';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Expanded(
                child: PageView.builder(
                    itemCount: onboardingItems.length,
                    controller: pageController,
                    onPageChanged: (value) {
                      setState(() {});
                    },
                    itemBuilder: (context, index) => OnboardingItem(
                          onboardingModel: onboardingItems.elementAt(index),
                        ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PageIndicator(pageController: pageController),
                CircularButton(
                  onPressed: () {
                    router.goNamed(ChatScreen.route);
                  },
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
