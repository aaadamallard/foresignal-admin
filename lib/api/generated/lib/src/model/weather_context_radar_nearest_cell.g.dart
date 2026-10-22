// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_context_radar_nearest_cell.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherContextRadarNearestCell extends WeatherContextRadarNearestCell {
  @override
  final String id;
  @override
  final num? distanceKm;
  @override
  final WeatherContextRadarNearestCellMotion? motion;
  @override
  final num? meshMaxMm;

  factory _$WeatherContextRadarNearestCell([
    void Function(WeatherContextRadarNearestCellBuilder)? updates,
  ]) => (WeatherContextRadarNearestCellBuilder()..update(updates))._build();

  _$WeatherContextRadarNearestCell._({
    required this.id,
    this.distanceKm,
    this.motion,
    this.meshMaxMm,
  }) : super._();
  @override
  WeatherContextRadarNearestCell rebuild(
    void Function(WeatherContextRadarNearestCellBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WeatherContextRadarNearestCellBuilder toBuilder() =>
      WeatherContextRadarNearestCellBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherContextRadarNearestCell &&
        id == other.id &&
        distanceKm == other.distanceKm &&
        motion == other.motion &&
        meshMaxMm == other.meshMaxMm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, motion.hashCode);
    _$hash = $jc(_$hash, meshMaxMm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherContextRadarNearestCell')
          ..add('id', id)
          ..add('distanceKm', distanceKm)
          ..add('motion', motion)
          ..add('meshMaxMm', meshMaxMm))
        .toString();
  }
}

class WeatherContextRadarNearestCellBuilder
    implements
        Builder<
          WeatherContextRadarNearestCell,
          WeatherContextRadarNearestCellBuilder
        > {
  _$WeatherContextRadarNearestCell? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  WeatherContextRadarNearestCellMotionBuilder? _motion;
  WeatherContextRadarNearestCellMotionBuilder get motion =>
      _$this._motion ??= WeatherContextRadarNearestCellMotionBuilder();
  set motion(WeatherContextRadarNearestCellMotionBuilder? motion) =>
      _$this._motion = motion;

  num? _meshMaxMm;
  num? get meshMaxMm => _$this._meshMaxMm;
  set meshMaxMm(num? meshMaxMm) => _$this._meshMaxMm = meshMaxMm;

  WeatherContextRadarNearestCellBuilder() {
    WeatherContextRadarNearestCell._defaults(this);
  }

  WeatherContextRadarNearestCellBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _distanceKm = $v.distanceKm;
      _motion = $v.motion?.toBuilder();
      _meshMaxMm = $v.meshMaxMm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherContextRadarNearestCell other) {
    _$v = other as _$WeatherContextRadarNearestCell;
  }

  @override
  void update(void Function(WeatherContextRadarNearestCellBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherContextRadarNearestCell build() => _build();

  _$WeatherContextRadarNearestCell _build() {
    _$WeatherContextRadarNearestCell _$result;
    try {
      _$result =
          _$v ??
          _$WeatherContextRadarNearestCell._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'WeatherContextRadarNearestCell',
              'id',
            ),
            distanceKm: distanceKm,
            motion: _motion?.build(),
            meshMaxMm: meshMaxMm,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'motion';
        _motion?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WeatherContextRadarNearestCell',
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
