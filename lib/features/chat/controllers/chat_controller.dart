import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_chatgpt_app/features/chat/repositories/chat_repository.dart';
import 'package:flutter_chatgpt_app/models/chat_message.dart';

final chatController =
    StateNotifierProvider.family<ChatController, bool, String>(
        (ref, String prompt) {
  final chatRepository = ref.read(chatRepositoryProvider(prompt));
  return ChatController(chatRepository);
});

class ChatController extends StateNotifier<bool> {
  final ChatRepository _chatRepository;
  ChatController(ChatRepository chatRepository)
      : _chatRepository = chatRepository,
        super(false);

  void initGGPT() => _chatRepository.initChatGPT();

  Either<List<ChatMessage>, Exception> sendRequest() {
    state = true;
    _chatRepository.sendRequest().fold((l) {
      return left(_chatRepository.getMessages());
    }, (r) {
      return right(r);
    });
    return right(Exception('something wrong happened'));
  }
}
