// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as int,
      receiverId: json['receiverId'] as String,
      senderId: json['senderId'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'receiverId': instance.receiverId,
      'senderId': instance.senderId,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$_NewMessage _$$_NewMessageFromJson(Map<String, dynamic> json) =>
    _$_NewMessage(
      receiverId: json['receiverId'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_NewMessageToJson(_$_NewMessage instance) =>
    <String, dynamic>{
      'receiverId': instance.receiverId,
      'content': instance.content,
    };
