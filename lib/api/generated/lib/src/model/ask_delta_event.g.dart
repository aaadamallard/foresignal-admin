// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_delta_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AskDeltaEvent extends AskDeltaEvent {
  @override
  final String text;

  factory _$AskDeltaEvent([void Function(AskDeltaEventBuilder)? updates]) =>
      (AskDeltaEventBuilder()..update(updates))._build();

  _$AskDeltaEvent._({required this.text}) : super._();
  @override
  AskDeltaEvent rebuild(void Function(AskDeltaEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskDeltaEventBuilder toBuilder() => AskDeltaEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskDeltaEvent && text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskDeltaEvent')..add('text', text))
        .toString();
  }
}

class AskDeltaEventBuilder
    implements Builder<AskDeltaEvent, AskDeltaEventBuilder> {
  _$AskDeltaEvent? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  AskDeltaEventBuilder() {
    AskDeltaEvent._defaults(this);
  }

  AskDeltaEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskDeltaEvent other) {
    _$v = other as _$AskDeltaEvent;
  }

  @override
  void update(void Function(AskDeltaEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskDeltaEvent build() => _build();

  _$AskDeltaEvent _build() {
    final _$result = _$v ??
        _$AskDeltaEvent._(
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'AskDeltaEvent', 'text'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
