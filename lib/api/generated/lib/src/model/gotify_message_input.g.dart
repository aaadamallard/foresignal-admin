// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gotify_message_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GotifyMessageInput extends GotifyMessageInput {
  @override
  final String? title;
  @override
  final String message;
  @override
  final int? priority;
  @override
  final BuiltMap<String, JsonObject?>? extras;

  factory _$GotifyMessageInput([
    void Function(GotifyMessageInputBuilder)? updates,
  ]) => (GotifyMessageInputBuilder()..update(updates))._build();

  _$GotifyMessageInput._({
    this.title,
    required this.message,
    this.priority,
    this.extras,
  }) : super._();
  @override
  GotifyMessageInput rebuild(
    void Function(GotifyMessageInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GotifyMessageInputBuilder toBuilder() =>
      GotifyMessageInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GotifyMessageInput &&
        title == other.title &&
        message == other.message &&
        priority == other.priority &&
        extras == other.extras;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, extras.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GotifyMessageInput')
          ..add('title', title)
          ..add('message', message)
          ..add('priority', priority)
          ..add('extras', extras))
        .toString();
  }
}

class GotifyMessageInputBuilder
    implements Builder<GotifyMessageInput, GotifyMessageInputBuilder> {
  _$GotifyMessageInput? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  MapBuilder<String, JsonObject?>? _extras;
  MapBuilder<String, JsonObject?> get extras =>
      _$this._extras ??= MapBuilder<String, JsonObject?>();
  set extras(MapBuilder<String, JsonObject?>? extras) =>
      _$this._extras = extras;

  GotifyMessageInputBuilder() {
    GotifyMessageInput._defaults(this);
  }

  GotifyMessageInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _message = $v.message;
      _priority = $v.priority;
      _extras = $v.extras?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GotifyMessageInput other) {
    _$v = other as _$GotifyMessageInput;
  }

  @override
  void update(void Function(GotifyMessageInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GotifyMessageInput build() => _build();

  _$GotifyMessageInput _build() {
    _$GotifyMessageInput _$result;
    try {
      _$result =
          _$v ??
          _$GotifyMessageInput._(
            title: title,
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GotifyMessageInput',
              'message',
            ),
            priority: priority,
            extras: _extras?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extras';
        _extras?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GotifyMessageInput',
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
