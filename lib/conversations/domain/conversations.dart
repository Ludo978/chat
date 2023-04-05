import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversations.freezed.dart';
part 'conversations.g.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    required int id,
    required String senderId,
    required String receiverId,
    required String senderName,
    required String receiverName,
    required String content,
    required DateTime createdAt,
  }) = _Conversation;

  const Conversation._();

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);
}
