import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter_chatgpt_app/models/chat_message.dart';
import 'package:fpdart/fpdart.dart';

import '../../common/providers.dart';

final chatRepositoryProvider =
    Provider.family<ChatRepository, String>((ref, String prompt) {
  return ChatRepository(
      prompt: prompt,
      chatMessages: ref.read(chatMessagesProvider),
      chatGPT: ref.read(chatGPTProvider));
});

class ChatRepository {
  final List<ChatMessage> _chatMessages;
  final ChatGPT _chatGPT;
  final String _prompt;

  ChatRepository({
    required String prompt,
    required List<ChatMessage> chatMessages,
    required ChatGPT chatGPT,
  })  : _prompt = prompt,
        _chatMessages = chatMessages,
        _chatGPT = chatGPT;

  void initChatGPT() {
    _chatGPT.builder('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');
  }

  Either<String, Exception> sendRequest() {
    String result = '';
    try {
      _chatGPT
          .onCompleteStream(
              request: CompleteReq(
            prompt: _prompt,
            model: kTranslateModelV3,
            max_tokens: 200,
          ))
          .asBroadcastStream()
          .listen((event) {
        result = event!.choices.first.text;
        _chatMessages.add(ChatMessage(text: result, isBot: true));
      });
      return left(result);
    } on Exception catch (e) {
      return right(e);
    }
  }

  List<ChatMessage> getMessages() => _chatMessages;
}
