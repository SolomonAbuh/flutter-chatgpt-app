import 'dart:async';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter_chatgpt_app/models/chat_message.dart';
import 'package:fpdart/fpdart.dart';

class ChatRepository {
  CompleteReq _completeReq;
  
  StreamSubscription _streamSubscription;
  final List<ChatMessage> _chatMessages;
  final ChatGPT _chatGPT;
  final String _prompt;

  ChatRepository({
    required CompleteReq completeReq,
    required StreamSubscription streamSubscription,
    required String prompt,
    required List<ChatMessage> chatMessages,
    required ChatGPT chatGPT,
  })  : _completeReq = completeReq,
        _prompt = prompt,
        _chatMessages = chatMessages,
        _streamSubscription = streamSubscription,
        _chatGPT = chatGPT;

  void initChatGPT() {
    _chatGPT.builder('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');
  }

  Either<CompleteReq, String> sendReq() {
    try {
      _completeReq = CompleteReq(
        prompt: _prompt,
        model: kTranslateModelV3,
        max_tokens: 200,
      );
      return left(_completeReq);
    } catch (e) {
      return right(e.toString());
    }
  }

  Either<String, String> sendRequest() {
    String result = '';
    try {
      _streamSubscription = _chatGPT
          .onCompleteStream(request: _completeReq)
          .asBroadcastStream()
          .listen((event) {
        result = event!.choices.first.text;
        _chatMessages.add(ChatMessage(text: result, isBot: true));
      });
      return left(result);
    } catch (e) {
      return right(e.toString());
    }
  }

  List<ChatMessage> getMessages() => _chatMessages;
}
