// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_grid_features_inner_properties.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatsGridFeaturesInnerProperties
    extends StatsGridFeaturesInnerProperties {
  @override
  final String? cell;
  @override
  final int value;

  factory _$StatsGridFeaturesInnerProperties(
          [void Function(StatsGridFeaturesInnerPropertiesBuilder)? updates]) =>
      (StatsGridFeaturesInnerPropertiesBuilder()..update(updates))._build();

  _$StatsGridFeaturesInnerProperties._({this.cell, required this.value})
      : super._();
  @override
  StatsGridFeaturesInnerProperties rebuild(
          void Function(StatsGridFeaturesInnerPropertiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsGridFeaturesInnerPropertiesBuilder toBuilder() =>
      StatsGridFeaturesInnerPropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsGridFeaturesInnerProperties &&
        cell == other.cell &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cell.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsGridFeaturesInnerProperties')
          ..add('cell', cell)
          ..add('value', value))
        .toString();
  }
}

class StatsGridFeaturesInnerPropertiesBuilder
    implements
        Builder<StatsGridFeaturesInnerProperties,
            StatsGridFeaturesInnerPropertiesBuilder> {
  _$StatsGridFeaturesInnerProperties? _$v;

  String? _cell;
  String? get cell => _$this._cell;
  set cell(String? cell) => _$this._cell = cell;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  StatsGridFeaturesInnerPropertiesBuilder() {
    StatsGridFeaturesInnerProperties._defaults(this);
  }

  StatsGridFeaturesInnerPropertiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cell = $v.cell;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsGridFeaturesInnerProperties other) {
    _$v = other as _$StatsGridFeaturesInnerProperties;
  }

  @override
  void update(void Function(StatsGridFeaturesInnerPropertiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsGridFeaturesInnerProperties build() => _build();

  _$StatsGridFeaturesInnerProperties _build() {
    final _$result = _$v ??
        _$StatsGridFeaturesInnerProperties._(
          cell: cell,
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'StatsGridFeaturesInnerProperties', 'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
