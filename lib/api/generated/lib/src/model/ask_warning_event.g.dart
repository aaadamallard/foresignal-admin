// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_warning_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AskWarningEvent extends AskWarningEvent {
  @override
  final String message;

  factory _$AskWarningEvent([void Function(AskWarningEventBuilder)? updates]) =>
      (AskWarningEventBuilder()..update(updates))._build();

  _$AskWarningEvent._({required this.message}) : super._();
  @override
  AskWarningEvent rebuild(void Function(AskWarningEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskWarningEventBuilder toBuilder() => AskWarningEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskWarningEvent && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskWarningEvent')
          ..add('message', message))
        .toString();
  }
}

class AskWarningEventBuilder
    implements Builder<AskWarningEvent, AskWarningEventBuilder> {
  _$AskWarningEvent? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AskWarningEventBuilder() {
    AskWarningEvent._defaults(this);
  }

  AskWarningEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskWarningEvent other) {
    _$v = other as _$AskWarningEvent;
  }

  @override
  void update(void Function(AskWarningEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskWarningEvent build() => _build();

  _$AskWarningEvent _build() {
    final _$result = _$v ??
        _$AskWarningEvent._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'AskWarningEvent', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
