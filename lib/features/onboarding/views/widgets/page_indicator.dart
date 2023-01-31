import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  final PageController pageController;
  const PageIndicator({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: JumpingDotEffect(
        dotWidth: 15,
        dotHeight: 8,
        activeDotColor: const Color(0xFF6FA3A3),
        dotColor: Colors.brown.withOpacity(0.2),
      ),
    );
  }
}
