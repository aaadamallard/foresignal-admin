// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuning_suggestion_dismiss.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TuningSuggestionDismiss extends TuningSuggestionDismiss {
  @override
  final String? reason;

  factory _$TuningSuggestionDismiss(
          [void Function(TuningSuggestionDismissBuilder)? updates]) =>
      (TuningSuggestionDismissBuilder()..update(updates))._build();

  _$TuningSuggestionDismiss._({this.reason}) : super._();
  @override
  TuningSuggestionDismiss rebuild(
          void Function(TuningSuggestionDismissBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TuningSuggestionDismissBuilder toBuilder() =>
      TuningSuggestionDismissBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TuningSuggestionDismiss && reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TuningSuggestionDismiss')
          ..add('reason', reason))
        .toString();
  }
}

class TuningSuggestionDismissBuilder
    implements
        Builder<TuningSuggestionDismiss, TuningSuggestionDismissBuilder> {
  _$TuningSuggestionDismiss? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  TuningSuggestionDismissBuilder() {
    TuningSuggestionDismiss._defaults(this);
  }

  TuningSuggestionDismissBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TuningSuggestionDismiss other) {
    _$v = other as _$TuningSuggestionDismiss;
  }

  @override
  void update(void Function(TuningSuggestionDismissBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TuningSuggestionDismiss build() => _build();

  _$TuningSuggestionDismiss _build() {
    final _$result = _$v ??
        _$TuningSuggestionDismiss._(
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
