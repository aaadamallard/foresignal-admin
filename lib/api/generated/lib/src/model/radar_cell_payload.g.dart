// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radar_cell_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RadarCellPayload extends RadarCellPayload {
  @override
  final num maxDbz;
  @override
  final num areaKm2;
  @override
  final num? meshMax;
  @override
  final int? glmFlashes5m;
  @override
  final RadarCellPayloadMotion? motion;
  @override
  final bool? automated;
  @override
  final bool? notAWarning;

  factory _$RadarCellPayload([
    void Function(RadarCellPayloadBuilder)? updates,
  ]) => (RadarCellPayloadBuilder()..update(updates))._build();

  _$RadarCellPayload._({
    required this.maxDbz,
    required this.areaKm2,
    this.meshMax,
    this.glmFlashes5m,
    this.motion,
    this.automated,
    this.notAWarning,
  }) : super._();
  @override
  RadarCellPayload rebuild(void Function(RadarCellPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RadarCellPayloadBuilder toBuilder() =>
      RadarCellPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RadarCellPayload &&
        maxDbz == other.maxDbz &&
        areaKm2 == other.areaKm2 &&
        meshMax == other.meshMax &&
        glmFlashes5m == other.glmFlashes5m &&
        motion == other.motion &&
        automated == other.automated &&
        notAWarning == other.notAWarning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxDbz.hashCode);
    _$hash = $jc(_$hash, areaKm2.hashCode);
    _$hash = $jc(_$hash, meshMax.hashCode);
    _$hash = $jc(_$hash, glmFlashes5m.hashCode);
    _$hash = $jc(_$hash, motion.hashCode);
    _$hash = $jc(_$hash, automated.hashCode);
    _$hash = $jc(_$hash, notAWarning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RadarCellPayload')
          ..add('maxDbz', maxDbz)
          ..add('areaKm2', areaKm2)
          ..add('meshMax', meshMax)
          ..add('glmFlashes5m', glmFlashes5m)
          ..add('motion', motion)
          ..add('automated', automated)
          ..add('notAWarning', notAWarning))
        .toString();
  }
}

class RadarCellPayloadBuilder
    implements Builder<RadarCellPayload, RadarCellPayloadBuilder> {
  _$RadarCellPayload? _$v;

  num? _maxDbz;
  num? get maxDbz => _$this._maxDbz;
  set maxDbz(num? maxDbz) => _$this._maxDbz = maxDbz;

  num? _areaKm2;
  num? get areaKm2 => _$this._areaKm2;
  set areaKm2(num? areaKm2) => _$this._areaKm2 = areaKm2;

  num? _meshMax;
  num? get meshMax => _$this._meshMax;
  set meshMax(num? meshMax) => _$this._meshMax = meshMax;

  int? _glmFlashes5m;
  int? get glmFlashes5m => _$this._glmFlashes5m;
  set glmFlashes5m(int? glmFlashes5m) => _$this._glmFlashes5m = glmFlashes5m;

  RadarCellPayloadMotionBuilder? _motion;
  RadarCellPayloadMotionBuilder get motion =>
      _$this._motion ??= RadarCellPayloadMotionBuilder();
  set motion(RadarCellPayloadMotionBuilder? motion) => _$this._motion = motion;

  bool? _automated;
  bool? get automated => _$this._automated;
  set automated(bool? automated) => _$this._automated = automated;

  bool? _notAWarning;
  bool? get notAWarning => _$this._notAWarning;
  set notAWarning(bool? notAWarning) => _$this._notAWarning = notAWarning;

  RadarCellPayloadBuilder() {
    RadarCellPayload._defaults(this);
  }

  RadarCellPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxDbz = $v.maxDbz;
      _areaKm2 = $v.areaKm2;
      _meshMax = $v.meshMax;
      _glmFlashes5m = $v.glmFlashes5m;
      _motion = $v.motion?.toBuilder();
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RadarCellPayload other) {
    _$v = other as _$RadarCellPayload;
  }

  @override
  void update(void Function(RadarCellPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RadarCellPayload build() => _build();

  _$RadarCellPayload _build() {
    _$RadarCellPayload _$result;
    try {
      _$result =
          _$v ??
          _$RadarCellPayload._(
            maxDbz: BuiltValueNullFieldError.checkNotNull(
              maxDbz,
              r'RadarCellPayload',
              'maxDbz',
            ),
            areaKm2: BuiltValueNullFieldError.checkNotNull(
              areaKm2,
              r'RadarCellPayload',
              'areaKm2',
            ),
            meshMax: meshMax,
            glmFlashes5m: glmFlashes5m,
            motion: _motion?.build(),
            automated: automated,
            notAWarning: notAWarning,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'motion';
        _motion?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RadarCellPayload',
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
