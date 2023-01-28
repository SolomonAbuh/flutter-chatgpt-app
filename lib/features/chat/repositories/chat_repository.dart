import 'dart:async';

import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';

class ChatRepository {
  CompleteReq _completeReq;
  final StreamSubscription _streamSubscription;
  final ChatGPT _chatGPT;

  ChatRepository({
    required CompleteReq completeReq,
    required StreamSubscription streamSubscription,
    required ChatGPT chatGPT,
  })  : _completeReq = completeReq,
        _streamSubscription = streamSubscription,
        _chatGPT = chatGPT;

  void initChatGPT() {
    _chatGPT.builder('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');
  }

  void sendRequest({required String prompt}) {
    _completeReq =
        CompleteReq(prompt: prompt, model: kTranslateModelV3, max_tokens: 200);
  }
}
