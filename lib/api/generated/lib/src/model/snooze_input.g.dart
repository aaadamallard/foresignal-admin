// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snooze_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SnoozeInput extends SnoozeInput {
  @override
  final DateTime? until;
  @override
  final String? for_;

  factory _$SnoozeInput([void Function(SnoozeInputBuilder)? updates]) =>
      (SnoozeInputBuilder()..update(updates))._build();

  _$SnoozeInput._({this.until, this.for_}) : super._();
  @override
  SnoozeInput rebuild(void Function(SnoozeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnoozeInputBuilder toBuilder() => SnoozeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnoozeInput && until == other.until && for_ == other.for_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, until.hashCode);
    _$hash = $jc(_$hash, for_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SnoozeInput')
          ..add('until', until)
          ..add('for_', for_))
        .toString();
  }
}

class SnoozeInputBuilder implements Builder<SnoozeInput, SnoozeInputBuilder> {
  _$SnoozeInput? _$v;

  DateTime? _until;
  DateTime? get until => _$this._until;
  set until(DateTime? until) => _$this._until = until;

  String? _for_;
  String? get for_ => _$this._for_;
  set for_(String? for_) => _$this._for_ = for_;

  SnoozeInputBuilder() {
    SnoozeInput._defaults(this);
  }

  SnoozeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _until = $v.until;
      _for_ = $v.for_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SnoozeInput other) {
    _$v = other as _$SnoozeInput;
  }

  @override
  void update(void Function(SnoozeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SnoozeInput build() => _build();

  _$SnoozeInput _build() {
    final _$result = _$v ??
        _$SnoozeInput._(
          until: until,
          for_: for_,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
