import 'package:chat/chat/domain/chat.dart';
import 'package:chat/main.dart';

class ChatRepository {
  Stream<List<Message?>> listenToMessages(userId) {
    return supabase
        .from('messages')
        .stream(primaryKey: ['id'])
        .order('createdAt', ascending: true)
        .map(
            (event) => event.map<Message>((e) => Message.fromJson(e)).toList());
  }

  Future<void> sendMessage(NewMessage message) {
    return supabase.from('messages').insert(message.toJson());
  }
}
