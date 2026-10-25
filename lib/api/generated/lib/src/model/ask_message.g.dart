// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AskMessageRoleEnum _$askMessageRoleEnum_user = const AskMessageRoleEnum._(
  'user',
);
const AskMessageRoleEnum _$askMessageRoleEnum_assistant =
    const AskMessageRoleEnum._('assistant');
const AskMessageRoleEnum _$askMessageRoleEnum_unknownDefaultOpenApi =
    const AskMessageRoleEnum._('unknownDefaultOpenApi');

AskMessageRoleEnum _$askMessageRoleEnumValueOf(String name) {
  switch (name) {
    case 'user':
      return _$askMessageRoleEnum_user;
    case 'assistant':
      return _$askMessageRoleEnum_assistant;
    case 'unknownDefaultOpenApi':
      return _$askMessageRoleEnum_unknownDefaultOpenApi;
    default:
      return _$askMessageRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AskMessageRoleEnum> _$askMessageRoleEnumValues =
    BuiltSet<AskMessageRoleEnum>(const <AskMessageRoleEnum>[
      _$askMessageRoleEnum_user,
      _$askMessageRoleEnum_assistant,
      _$askMessageRoleEnum_unknownDefaultOpenApi,
    ]);

Serializer<AskMessageRoleEnum> _$askMessageRoleEnumSerializer =
    _$AskMessageRoleEnumSerializer();

class _$AskMessageRoleEnumSerializer
    implements PrimitiveSerializer<AskMessageRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'user': 'user',
    'assistant': 'assistant',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user': 'user',
    'assistant': 'assistant',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AskMessageRoleEnum];
  @override
  final String wireName = 'AskMessageRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    AskMessageRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AskMessageRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AskMessageRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AskMessage extends AskMessage {
  @override
  final AskMessageRoleEnum role;
  @override
  final String content;
  @override
  final BuiltList<AskCitation>? citations;
  @override
  final DateTime createdAt;
  @override
  final BuiltList<String>? warnings;

  factory _$AskMessage([void Function(AskMessageBuilder)? updates]) =>
      (AskMessageBuilder()..update(updates))._build();

  _$AskMessage._({
    required this.role,
    required this.content,
    this.citations,
    required this.createdAt,
    this.warnings,
  }) : super._();
  @override
  AskMessage rebuild(void Function(AskMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskMessageBuilder toBuilder() => AskMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskMessage &&
        role == other.role &&
        content == other.content &&
        citations == other.citations &&
        createdAt == other.createdAt &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, citations.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskMessage')
          ..add('role', role)
          ..add('content', content)
          ..add('citations', citations)
          ..add('createdAt', createdAt)
          ..add('warnings', warnings))
        .toString();
  }
}

class AskMessageBuilder implements Builder<AskMessage, AskMessageBuilder> {
  _$AskMessage? _$v;

  AskMessageRoleEnum? _role;
  AskMessageRoleEnum? get role => _$this._role;
  set role(AskMessageRoleEnum? role) => _$this._role = role;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ListBuilder<AskCitation>? _citations;
  ListBuilder<AskCitation> get citations =>
      _$this._citations ??= ListBuilder<AskCitation>();
  set citations(ListBuilder<AskCitation>? citations) =>
      _$this._citations = citations;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  AskMessageBuilder() {
    AskMessage._defaults(this);
  }

  AskMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _content = $v.content;
      _citations = $v.citations?.toBuilder();
      _createdAt = $v.createdAt;
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskMessage other) {
    _$v = other as _$AskMessage;
  }

  @override
  void update(void Function(AskMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskMessage build() => _build();

  _$AskMessage _build() {
    _$AskMessage _$result;
    try {
      _$result =
          _$v ??
          _$AskMessage._(
            role: BuiltValueNullFieldError.checkNotNull(
              role,
              r'AskMessage',
              'role',
            ),
            content: BuiltValueNullFieldError.checkNotNull(
              content,
              r'AskMessage',
              'content',
            ),
            citations: _citations?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'AskMessage',
              'createdAt',
            ),
            warnings: _warnings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'citations';
        _citations?.build();

        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AskMessage',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
