import 'package:chat/conversations/domain/conversations.dart';
import 'package:chat/main.dart';

class ConversationsRepository {
  Future<List<Conversation?>> getConversations() async {
    final response = await supabase.rpc('get_conversations');

    if (response.length == 0) {
      return [];
    }
    return response
        .map<Conversation>(
            (e) => Conversation.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
