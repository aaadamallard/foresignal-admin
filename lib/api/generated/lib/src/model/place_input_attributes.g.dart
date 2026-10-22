// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_input_attributes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceInputAttributes extends PlaceInputAttributes {
  @override
  final String? zip;

  factory _$PlaceInputAttributes([
    void Function(PlaceInputAttributesBuilder)? updates,
  ]) => (PlaceInputAttributesBuilder()..update(updates))._build();

  _$PlaceInputAttributes._({this.zip}) : super._();
  @override
  PlaceInputAttributes rebuild(
    void Function(PlaceInputAttributesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlaceInputAttributesBuilder toBuilder() =>
      PlaceInputAttributesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceInputAttributes && zip == other.zip;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, zip.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'PlaceInputAttributes',
    )..add('zip', zip)).toString();
  }
}

class PlaceInputAttributesBuilder
    implements Builder<PlaceInputAttributes, PlaceInputAttributesBuilder> {
  _$PlaceInputAttributes? _$v;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  PlaceInputAttributesBuilder() {
    PlaceInputAttributes._defaults(this);
  }

  PlaceInputAttributesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _zip = $v.zip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceInputAttributes other) {
    _$v = other as _$PlaceInputAttributes;
  }

  @override
  void update(void Function(PlaceInputAttributesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceInputAttributes build() => _build();

  _$PlaceInputAttributes _build() {
    final _$result = _$v ?? _$PlaceInputAttributes._(zip: zip);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
