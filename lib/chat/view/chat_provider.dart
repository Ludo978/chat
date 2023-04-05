import 'package:chat/chat/data/chat.dart';
import 'package:chat/chat/domain/chat.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final listenToMessages =
    StreamProvider.family<List<Message?>, String>((ref, userId) {
  return ChatRepository().listenToMessages(userId);
});

final sendMessage = FutureProvider.family<void, NewMessage>((ref, message) {
  return ChatRepository().sendMessage(message);
});
