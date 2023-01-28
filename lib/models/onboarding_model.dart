// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_chatgpt_app/configs/assets.dart';

class OnboardingModel {
  final String imageAsset;
  final String text;
  OnboardingModel({
    required this.imageAsset,
    required this.text,
  });
}

List<OnboardingModel> onboardingItems = [
  OnboardingModel(
      imageAsset: AppAssets.hello, text: 'Welcome To Flutter Chat Gpt'),
  OnboardingModel(
      imageAsset: AppAssets.laptop,
      text: 'With the use of An Unofficial Open AI package'),
  OnboardingModel(
      imageAsset: AppAssets.love, text: 'Please Follow me\nthanks 🥹💙')
];
