// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_index_def_floors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionalIndexDefFloorsInner extends RegionalIndexDefFloorsInner {
  @override
  final String? id;
  @override
  final String description;
  @override
  final BuiltMap<String, JsonObject?>? condition;
  @override
  final num minValue;

  factory _$RegionalIndexDefFloorsInner([
    void Function(RegionalIndexDefFloorsInnerBuilder)? updates,
  ]) => (RegionalIndexDefFloorsInnerBuilder()..update(updates))._build();

  _$RegionalIndexDefFloorsInner._({
    this.id,
    required this.description,
    this.condition,
    required this.minValue,
  }) : super._();
  @override
  RegionalIndexDefFloorsInner rebuild(
    void Function(RegionalIndexDefFloorsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RegionalIndexDefFloorsInnerBuilder toBuilder() =>
      RegionalIndexDefFloorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalIndexDefFloorsInner &&
        id == other.id &&
        description == other.description &&
        condition == other.condition &&
        minValue == other.minValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jc(_$hash, minValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionalIndexDefFloorsInner')
          ..add('id', id)
          ..add('description', description)
          ..add('condition', condition)
          ..add('minValue', minValue))
        .toString();
  }
}

class RegionalIndexDefFloorsInnerBuilder
    implements
        Builder<
          RegionalIndexDefFloorsInner,
          RegionalIndexDefFloorsInnerBuilder
        > {
  _$RegionalIndexDefFloorsInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  MapBuilder<String, JsonObject?>? _condition;
  MapBuilder<String, JsonObject?> get condition =>
      _$this._condition ??= MapBuilder<String, JsonObject?>();
  set condition(MapBuilder<String, JsonObject?>? condition) =>
      _$this._condition = condition;

  num? _minValue;
  num? get minValue => _$this._minValue;
  set minValue(num? minValue) => _$this._minValue = minValue;

  RegionalIndexDefFloorsInnerBuilder() {
    RegionalIndexDefFloorsInner._defaults(this);
  }

  RegionalIndexDefFloorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _condition = $v.condition?.toBuilder();
      _minValue = $v.minValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalIndexDefFloorsInner other) {
    _$v = other as _$RegionalIndexDefFloorsInner;
  }

  @override
  void update(void Function(RegionalIndexDefFloorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalIndexDefFloorsInner build() => _build();

  _$RegionalIndexDefFloorsInner _build() {
    _$RegionalIndexDefFloorsInner _$result;
    try {
      _$result =
          _$v ??
          _$RegionalIndexDefFloorsInner._(
            id: id,
            description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'RegionalIndexDefFloorsInner',
              'description',
            ),
            condition: _condition?.build(),
            minValue: BuiltValueNullFieldError.checkNotNull(
              minValue,
              r'RegionalIndexDefFloorsInner',
              'minValue',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'condition';
        _condition?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RegionalIndexDefFloorsInner',
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
