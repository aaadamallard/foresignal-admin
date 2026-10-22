// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kinematic_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KinematicState extends KinematicState {
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final String? kind;
  @override
  final Geometry position;
  @override
  final DateTime observedAt;
  @override
  final num? speedMps;
  @override
  final num? courseDeg;
  @override
  final num? altitudeM;
  @override
  final bool? derived;
  @override
  final bool? stale;

  factory _$KinematicState([void Function(KinematicStateBuilder)? updates]) =>
      (KinematicStateBuilder()..update(updates))._build();

  _$KinematicState._({
    required this.sourceId,
    required this.externalId,
    this.kind,
    required this.position,
    required this.observedAt,
    this.speedMps,
    this.courseDeg,
    this.altitudeM,
    this.derived,
    this.stale,
  }) : super._();
  @override
  KinematicState rebuild(void Function(KinematicStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KinematicStateBuilder toBuilder() => KinematicStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KinematicState &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        kind == other.kind &&
        position == other.position &&
        observedAt == other.observedAt &&
        speedMps == other.speedMps &&
        courseDeg == other.courseDeg &&
        altitudeM == other.altitudeM &&
        derived == other.derived &&
        stale == other.stale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, speedMps.hashCode);
    _$hash = $jc(_$hash, courseDeg.hashCode);
    _$hash = $jc(_$hash, altitudeM.hashCode);
    _$hash = $jc(_$hash, derived.hashCode);
    _$hash = $jc(_$hash, stale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KinematicState')
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('position', position)
          ..add('observedAt', observedAt)
          ..add('speedMps', speedMps)
          ..add('courseDeg', courseDeg)
          ..add('altitudeM', altitudeM)
          ..add('derived', derived)
          ..add('stale', stale))
        .toString();
  }
}

class KinematicStateBuilder
    implements Builder<KinematicState, KinematicStateBuilder> {
  _$KinematicState? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  GeometryBuilder? _position;
  GeometryBuilder get position => _$this._position ??= GeometryBuilder();
  set position(GeometryBuilder? position) => _$this._position = position;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  num? _speedMps;
  num? get speedMps => _$this._speedMps;
  set speedMps(num? speedMps) => _$this._speedMps = speedMps;

  num? _courseDeg;
  num? get courseDeg => _$this._courseDeg;
  set courseDeg(num? courseDeg) => _$this._courseDeg = courseDeg;

  num? _altitudeM;
  num? get altitudeM => _$this._altitudeM;
  set altitudeM(num? altitudeM) => _$this._altitudeM = altitudeM;

  bool? _derived;
  bool? get derived => _$this._derived;
  set derived(bool? derived) => _$this._derived = derived;

  bool? _stale;
  bool? get stale => _$this._stale;
  set stale(bool? stale) => _$this._stale = stale;

  KinematicStateBuilder() {
    KinematicState._defaults(this);
  }

  KinematicStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _position = $v.position.toBuilder();
      _observedAt = $v.observedAt;
      _speedMps = $v.speedMps;
      _courseDeg = $v.courseDeg;
      _altitudeM = $v.altitudeM;
      _derived = $v.derived;
      _stale = $v.stale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KinematicState other) {
    _$v = other as _$KinematicState;
  }

  @override
  void update(void Function(KinematicStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KinematicState build() => _build();

  _$KinematicState _build() {
    _$KinematicState _$result;
    try {
      _$result =
          _$v ??
          _$KinematicState._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId,
              r'KinematicState',
              'sourceId',
            ),
            externalId: BuiltValueNullFieldError.checkNotNull(
              externalId,
              r'KinematicState',
              'externalId',
            ),
            kind: kind,
            position: position.build(),
            observedAt: BuiltValueNullFieldError.checkNotNull(
              observedAt,
              r'KinematicState',
              'observedAt',
            ),
            speedMps: speedMps,
            courseDeg: courseDeg,
            altitudeM: altitudeM,
            derived: derived,
            stale: stale,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'position';
        position.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'KinematicState',
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
