// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_app/configs/assets.dart';
import 'package:flutter_chatgpt_app/features/onboarding/presentation/widgets/welcome_to_chat_gpt.dart';

class OnboardingModel {
  final String imageAsset;
  final Widget infoWidget;
  OnboardingModel({
    required this.imageAsset,
    required this.infoWidget,
  });
}

List<OnboardingModel> onboardingItems = [
  OnboardingModel(
      imageAsset: AppAssets.hello, infoWidget: const WelcomeToChatGpt()),
  OnboardingModel(
      imageAsset: AppAssets.laptop,
      infoWidget: Text('With the use of An\nUnofficial Open AI package'))
];
