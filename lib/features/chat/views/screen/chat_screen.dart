import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_app/configs/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatScreen extends ConsumerWidget {
  const ChatScreen({super.key});
  static const route = '/chatScreen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: TextFormField(
                            decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.send),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
