import 'dart:async';
import 'package:flutter_chatgpt_app/models/chat_message.dart';
import 'package:riverpod/riverpod.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';

import '../chat/repositories/chat_repository.dart';

final chatGPTProvider = Provider<ChatGPT>((ref) {
  return ChatGPT.instance;
});

final chatMessagesProvider = Provider<List<ChatMessage>>((ref) {
  List<ChatMessage> list = [];
  return list;
});
