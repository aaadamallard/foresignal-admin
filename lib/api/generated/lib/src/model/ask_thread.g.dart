// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_thread.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AskThread extends AskThread {
  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final BuiltList<AskMessage>? messages;
  @override
  final BuiltList<AskAction>? actions;

  factory _$AskThread([void Function(AskThreadBuilder)? updates]) =>
      (AskThreadBuilder()..update(updates))._build();

  _$AskThread._(
      {required this.id,
      required this.title,
      required this.createdAt,
      this.updatedAt,
      this.messages,
      this.actions})
      : super._();
  @override
  AskThread rebuild(void Function(AskThreadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskThreadBuilder toBuilder() => AskThreadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskThread &&
        id == other.id &&
        title == other.title &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        messages == other.messages &&
        actions == other.actions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jc(_$hash, actions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskThread')
          ..add('id', id)
          ..add('title', title)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('messages', messages)
          ..add('actions', actions))
        .toString();
  }
}

class AskThreadBuilder implements Builder<AskThread, AskThreadBuilder> {
  _$AskThread? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<AskMessage>? _messages;
  ListBuilder<AskMessage> get messages =>
      _$this._messages ??= ListBuilder<AskMessage>();
  set messages(ListBuilder<AskMessage>? messages) =>
      _$this._messages = messages;

  ListBuilder<AskAction>? _actions;
  ListBuilder<AskAction> get actions =>
      _$this._actions ??= ListBuilder<AskAction>();
  set actions(ListBuilder<AskAction>? actions) => _$this._actions = actions;

  AskThreadBuilder() {
    AskThread._defaults(this);
  }

  AskThreadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _messages = $v.messages?.toBuilder();
      _actions = $v.actions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskThread other) {
    _$v = other as _$AskThread;
  }

  @override
  void update(void Function(AskThreadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskThread build() => _build();

  _$AskThread _build() {
    _$AskThread _$result;
    try {
      _$result = _$v ??
          _$AskThread._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'AskThread', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'AskThread', 'title'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'AskThread', 'createdAt'),
            updatedAt: updatedAt,
            messages: _messages?.build(),
            actions: _actions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        _messages?.build();
        _$failedField = 'actions';
        _actions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AskThread', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
