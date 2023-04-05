// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  int get id => throw _privateConstructorUsedError;
  String get receiverId => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {int id,
      String receiverId,
      String senderId,
      String content,
      DateTime createdAt});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? receiverId = null,
    Object? senderId = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String receiverId,
      String senderId,
      String content,
      DateTime createdAt});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? receiverId = null,
    Object? senderId = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_$_Message(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message extends _Message {
  const _$_Message(
      {required this.id,
      required this.receiverId,
      required this.senderId,
      required this.content,
      required this.createdAt})
      : super._();

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final int id;
  @override
  final String receiverId;
  @override
  final String senderId;
  @override
  final String content;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Message(id: $id, receiverId: $receiverId, senderId: $senderId, content: $content, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, receiverId, senderId, content, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message extends Message {
  const factory _Message(
      {required final int id,
      required final String receiverId,
      required final String senderId,
      required final String content,
      required final DateTime createdAt}) = _$_Message;
  const _Message._() : super._();

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  int get id;
  @override
  String get receiverId;
  @override
  String get senderId;
  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

NewMessage _$NewMessageFromJson(Map<String, dynamic> json) {
  return _NewMessage.fromJson(json);
}

/// @nodoc
mixin _$NewMessage {
  String get receiverId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewMessageCopyWith<NewMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewMessageCopyWith<$Res> {
  factory $NewMessageCopyWith(
          NewMessage value, $Res Function(NewMessage) then) =
      _$NewMessageCopyWithImpl<$Res, NewMessage>;
  @useResult
  $Res call({String receiverId, String content});
}

/// @nodoc
class _$NewMessageCopyWithImpl<$Res, $Val extends NewMessage>
    implements $NewMessageCopyWith<$Res> {
  _$NewMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewMessageCopyWith<$Res>
    implements $NewMessageCopyWith<$Res> {
  factory _$$_NewMessageCopyWith(
          _$_NewMessage value, $Res Function(_$_NewMessage) then) =
      __$$_NewMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String receiverId, String content});
}

/// @nodoc
class __$$_NewMessageCopyWithImpl<$Res>
    extends _$NewMessageCopyWithImpl<$Res, _$_NewMessage>
    implements _$$_NewMessageCopyWith<$Res> {
  __$$_NewMessageCopyWithImpl(
      _$_NewMessage _value, $Res Function(_$_NewMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? content = null,
  }) {
    return _then(_$_NewMessage(
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewMessage extends _NewMessage {
  const _$_NewMessage({required this.receiverId, required this.content})
      : super._();

  factory _$_NewMessage.fromJson(Map<String, dynamic> json) =>
      _$$_NewMessageFromJson(json);

  @override
  final String receiverId;
  @override
  final String content;

  @override
  String toString() {
    return 'NewMessage(receiverId: $receiverId, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewMessage &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, receiverId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewMessageCopyWith<_$_NewMessage> get copyWith =>
      __$$_NewMessageCopyWithImpl<_$_NewMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewMessageToJson(
      this,
    );
  }
}

abstract class _NewMessage extends NewMessage {
  const factory _NewMessage(
      {required final String receiverId,
      required final String content}) = _$_NewMessage;
  const _NewMessage._() : super._();

  factory _NewMessage.fromJson(Map<String, dynamic> json) =
      _$_NewMessage.fromJson;

  @override
  String get receiverId;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_NewMessageCopyWith<_$_NewMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
