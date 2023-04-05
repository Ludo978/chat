// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Conversation _$$_ConversationFromJson(Map<String, dynamic> json) =>
    _$_Conversation(
      id: json['id'] as int,
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
      senderName: json['senderName'] as String,
      receiverName: json['receiverName'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_ConversationToJson(_$_Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'senderName': instance.senderName,
      'receiverName': instance.receiverName,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
    };
