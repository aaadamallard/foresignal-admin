// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approach_condition_target.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApproachConditionTarget extends ApproachConditionTarget {
  @override
  final String? placeId;
  @override
  final Geometry? point;
  @override
  final String? record;

  factory _$ApproachConditionTarget([
    void Function(ApproachConditionTargetBuilder)? updates,
  ]) => (ApproachConditionTargetBuilder()..update(updates))._build();

  _$ApproachConditionTarget._({this.placeId, this.point, this.record})
    : super._();
  @override
  ApproachConditionTarget rebuild(
    void Function(ApproachConditionTargetBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApproachConditionTargetBuilder toBuilder() =>
      ApproachConditionTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApproachConditionTarget &&
        placeId == other.placeId &&
        point == other.point &&
        record == other.record;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, point.hashCode);
    _$hash = $jc(_$hash, record.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApproachConditionTarget')
          ..add('placeId', placeId)
          ..add('point', point)
          ..add('record', record))
        .toString();
  }
}

class ApproachConditionTargetBuilder
    implements
        Builder<ApproachConditionTarget, ApproachConditionTargetBuilder> {
  _$ApproachConditionTarget? _$v;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  GeometryBuilder? _point;
  GeometryBuilder get point => _$this._point ??= GeometryBuilder();
  set point(GeometryBuilder? point) => _$this._point = point;

  String? _record;
  String? get record => _$this._record;
  set record(String? record) => _$this._record = record;

  ApproachConditionTargetBuilder() {
    ApproachConditionTarget._defaults(this);
  }

  ApproachConditionTargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placeId = $v.placeId;
      _point = $v.point?.toBuilder();
      _record = $v.record;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApproachConditionTarget other) {
    _$v = other as _$ApproachConditionTarget;
  }

  @override
  void update(void Function(ApproachConditionTargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApproachConditionTarget build() => _build();

  _$ApproachConditionTarget _build() {
    _$ApproachConditionTarget _$result;
    try {
      _$result =
          _$v ??
          _$ApproachConditionTarget._(
            placeId: placeId,
            point: _point?.build(),
            record: record,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'point';
        _point?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ApproachConditionTarget',
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
