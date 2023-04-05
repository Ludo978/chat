import 'package:chat/conversations/data/conversations.dart';
import 'package:chat/conversations/domain/conversations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final conversationsProvider = FutureProvider<List<Conversation?>>((ref) async {
  final data = await ConversationsRepository().getConversations();
  return data;
});
