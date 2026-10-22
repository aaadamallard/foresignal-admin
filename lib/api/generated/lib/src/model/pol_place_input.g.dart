// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pol_place_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolPlaceInput extends PolPlaceInput {
  @override
  final String? label;

  factory _$PolPlaceInput([void Function(PolPlaceInputBuilder)? updates]) =>
      (PolPlaceInputBuilder()..update(updates))._build();

  _$PolPlaceInput._({this.label}) : super._();
  @override
  PolPlaceInput rebuild(void Function(PolPlaceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolPlaceInputBuilder toBuilder() => PolPlaceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolPlaceInput && label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'PolPlaceInput',
    )..add('label', label)).toString();
  }
}

class PolPlaceInputBuilder
    implements Builder<PolPlaceInput, PolPlaceInputBuilder> {
  _$PolPlaceInput? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  PolPlaceInputBuilder() {
    PolPlaceInput._defaults(this);
  }

  PolPlaceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolPlaceInput other) {
    _$v = other as _$PolPlaceInput;
  }

  @override
  void update(void Function(PolPlaceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolPlaceInput build() => _build();

  _$PolPlaceInput _build() {
    final _$result = _$v ?? _$PolPlaceInput._(label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
