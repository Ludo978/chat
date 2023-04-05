import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required int id,
    required String receiverId,
    required String senderId,
    required String content,
    required DateTime createdAt,
  }) = _Message;

  const Message._();

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class NewMessage with _$NewMessage {
  const factory NewMessage({
    required String receiverId,
    required String content,
  }) = _NewMessage;

  const NewMessage._();

  factory NewMessage.fromJson(Map<String, dynamic> json) =>
      _$NewMessageFromJson(json);
}
