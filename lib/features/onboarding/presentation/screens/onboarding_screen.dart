import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_app/features/common/presentation/widgets/circular_button.dart';
import 'package:flutter_chatgpt_app/features/onboarding/domain/entities/onboarding_model.dart';
import 'package:flutter_chatgpt_app/features/onboarding/presentation/widgets/custom_arch.dart';
import 'package:flutter_chatgpt_app/features/onboarding/presentation/widgets/onboarding_item.dart';
import 'package:flutter_chatgpt_app/features/onboarding/presentation/widgets/page_indicator.dart';
import 'package:flutter_chatgpt_app/features/onboarding/presentation/widgets/welcome_to_chat_gpt.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static const String route = 'onboarding';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XffEEE3DD),
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
                const CircularButton(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

// }


//   Column(
//                         children: [
//                           Expanded(
//                             child: Center(
//                               child: Padding(
//                                 padding: EdgeInsets.symmetric(horizontal: 50),
//                                 child: Text(
//                                   'A flutter Application Powered by an Unoffical Open AI API',
//                                   style: TextStyle(
//                                       fontSize: 40,
//                                       fontWeight: FontWeight.w700,
//                                       color: Colors.brown[700]),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 350,
//                             child: Image.asset(
//                               'assets/images/laptop.png',
