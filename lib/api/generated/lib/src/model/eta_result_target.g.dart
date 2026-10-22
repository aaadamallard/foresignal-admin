// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eta_result_target.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EtaResultTarget extends EtaResultTarget {
  @override
  final String? placeId;
  @override
  final Geometry point;

  factory _$EtaResultTarget([void Function(EtaResultTargetBuilder)? updates]) =>
      (EtaResultTargetBuilder()..update(updates))._build();

  _$EtaResultTarget._({this.placeId, required this.point}) : super._();
  @override
  EtaResultTarget rebuild(void Function(EtaResultTargetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EtaResultTargetBuilder toBuilder() => EtaResultTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EtaResultTarget &&
        placeId == other.placeId &&
        point == other.point;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, point.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EtaResultTarget')
          ..add('placeId', placeId)
          ..add('point', point))
        .toString();
  }
}

class EtaResultTargetBuilder
    implements Builder<EtaResultTarget, EtaResultTargetBuilder> {
  _$EtaResultTarget? _$v;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  GeometryBuilder? _point;
  GeometryBuilder get point => _$this._point ??= GeometryBuilder();
  set point(GeometryBuilder? point) => _$this._point = point;

  EtaResultTargetBuilder() {
    EtaResultTarget._defaults(this);
  }

  EtaResultTargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placeId = $v.placeId;
      _point = $v.point.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EtaResultTarget other) {
    _$v = other as _$EtaResultTarget;
  }

  @override
  void update(void Function(EtaResultTargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EtaResultTarget build() => _build();

  _$EtaResultTarget _build() {
    _$EtaResultTarget _$result;
    try {
      _$result = _$v ??
          _$EtaResultTarget._(
            placeId: placeId,
            point: point.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'point';
        point.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EtaResultTarget', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
