// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'celestrak_gp_element.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CelestrakGpElement extends CelestrakGpElement {
  @override
  final String OBJECT_NAME;
  @override
  final String OBJECT_ID;
  @override
  final String EPOCH;
  @override
  final num MEAN_MOTION;
  @override
  final num ECCENTRICITY;
  @override
  final num INCLINATION;
  @override
  final num RA_OF_ASC_NODE;
  @override
  final num ARG_OF_PERICENTER;
  @override
  final num MEAN_ANOMALY;
  @override
  final int? EPHEMERIS_TYPE;
  @override
  final String? CLASSIFICATION_TYPE;
  @override
  final int NORAD_CAT_ID;
  @override
  final int? ELEMENT_SET_NO;
  @override
  final int? REV_AT_EPOCH;
  @override
  final num? BSTAR;
  @override
  final num? MEAN_MOTION_DOT;
  @override
  final num? MEAN_MOTION_DDOT;

  factory _$CelestrakGpElement([
    void Function(CelestrakGpElementBuilder)? updates,
  ]) => (CelestrakGpElementBuilder()..update(updates))._build();

  _$CelestrakGpElement._({
    required this.OBJECT_NAME,
    required this.OBJECT_ID,
    required this.EPOCH,
    required this.MEAN_MOTION,
    required this.ECCENTRICITY,
    required this.INCLINATION,
    required this.RA_OF_ASC_NODE,
    required this.ARG_OF_PERICENTER,
    required this.MEAN_ANOMALY,
    this.EPHEMERIS_TYPE,
    this.CLASSIFICATION_TYPE,
    required this.NORAD_CAT_ID,
    this.ELEMENT_SET_NO,
    this.REV_AT_EPOCH,
    this.BSTAR,
    this.MEAN_MOTION_DOT,
    this.MEAN_MOTION_DDOT,
  }) : super._();
  @override
  CelestrakGpElement rebuild(
    void Function(CelestrakGpElementBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CelestrakGpElementBuilder toBuilder() =>
      CelestrakGpElementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CelestrakGpElement &&
        OBJECT_NAME == other.OBJECT_NAME &&
        OBJECT_ID == other.OBJECT_ID &&
        EPOCH == other.EPOCH &&
        MEAN_MOTION == other.MEAN_MOTION &&
        ECCENTRICITY == other.ECCENTRICITY &&
        INCLINATION == other.INCLINATION &&
        RA_OF_ASC_NODE == other.RA_OF_ASC_NODE &&
        ARG_OF_PERICENTER == other.ARG_OF_PERICENTER &&
        MEAN_ANOMALY == other.MEAN_ANOMALY &&
        EPHEMERIS_TYPE == other.EPHEMERIS_TYPE &&
        CLASSIFICATION_TYPE == other.CLASSIFICATION_TYPE &&
        NORAD_CAT_ID == other.NORAD_CAT_ID &&
        ELEMENT_SET_NO == other.ELEMENT_SET_NO &&
        REV_AT_EPOCH == other.REV_AT_EPOCH &&
        BSTAR == other.BSTAR &&
        MEAN_MOTION_DOT == other.MEAN_MOTION_DOT &&
        MEAN_MOTION_DDOT == other.MEAN_MOTION_DDOT;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, OBJECT_NAME.hashCode);
    _$hash = $jc(_$hash, OBJECT_ID.hashCode);
    _$hash = $jc(_$hash, EPOCH.hashCode);
    _$hash = $jc(_$hash, MEAN_MOTION.hashCode);
    _$hash = $jc(_$hash, ECCENTRICITY.hashCode);
    _$hash = $jc(_$hash, INCLINATION.hashCode);
    _$hash = $jc(_$hash, RA_OF_ASC_NODE.hashCode);
    _$hash = $jc(_$hash, ARG_OF_PERICENTER.hashCode);
    _$hash = $jc(_$hash, MEAN_ANOMALY.hashCode);
    _$hash = $jc(_$hash, EPHEMERIS_TYPE.hashCode);
    _$hash = $jc(_$hash, CLASSIFICATION_TYPE.hashCode);
    _$hash = $jc(_$hash, NORAD_CAT_ID.hashCode);
    _$hash = $jc(_$hash, ELEMENT_SET_NO.hashCode);
    _$hash = $jc(_$hash, REV_AT_EPOCH.hashCode);
    _$hash = $jc(_$hash, BSTAR.hashCode);
    _$hash = $jc(_$hash, MEAN_MOTION_DOT.hashCode);
    _$hash = $jc(_$hash, MEAN_MOTION_DDOT.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CelestrakGpElement')
          ..add('OBJECT_NAME', OBJECT_NAME)
          ..add('OBJECT_ID', OBJECT_ID)
          ..add('EPOCH', EPOCH)
          ..add('MEAN_MOTION', MEAN_MOTION)
          ..add('ECCENTRICITY', ECCENTRICITY)
          ..add('INCLINATION', INCLINATION)
          ..add('RA_OF_ASC_NODE', RA_OF_ASC_NODE)
          ..add('ARG_OF_PERICENTER', ARG_OF_PERICENTER)
          ..add('MEAN_ANOMALY', MEAN_ANOMALY)
          ..add('EPHEMERIS_TYPE', EPHEMERIS_TYPE)
          ..add('CLASSIFICATION_TYPE', CLASSIFICATION_TYPE)
          ..add('NORAD_CAT_ID', NORAD_CAT_ID)
          ..add('ELEMENT_SET_NO', ELEMENT_SET_NO)
          ..add('REV_AT_EPOCH', REV_AT_EPOCH)
          ..add('BSTAR', BSTAR)
          ..add('MEAN_MOTION_DOT', MEAN_MOTION_DOT)
          ..add('MEAN_MOTION_DDOT', MEAN_MOTION_DDOT))
        .toString();
  }
}

class CelestrakGpElementBuilder
    implements Builder<CelestrakGpElement, CelestrakGpElementBuilder> {
  _$CelestrakGpElement? _$v;

  String? _OBJECT_NAME;
  String? get OBJECT_NAME => _$this._OBJECT_NAME;
  set OBJECT_NAME(String? OBJECT_NAME) => _$this._OBJECT_NAME = OBJECT_NAME;

  String? _OBJECT_ID;
  String? get OBJECT_ID => _$this._OBJECT_ID;
  set OBJECT_ID(String? OBJECT_ID) => _$this._OBJECT_ID = OBJECT_ID;

  String? _EPOCH;
  String? get EPOCH => _$this._EPOCH;
  set EPOCH(String? EPOCH) => _$this._EPOCH = EPOCH;

  num? _MEAN_MOTION;
  num? get MEAN_MOTION => _$this._MEAN_MOTION;
  set MEAN_MOTION(num? MEAN_MOTION) => _$this._MEAN_MOTION = MEAN_MOTION;

  num? _ECCENTRICITY;
  num? get ECCENTRICITY => _$this._ECCENTRICITY;
  set ECCENTRICITY(num? ECCENTRICITY) => _$this._ECCENTRICITY = ECCENTRICITY;

  num? _INCLINATION;
  num? get INCLINATION => _$this._INCLINATION;
  set INCLINATION(num? INCLINATION) => _$this._INCLINATION = INCLINATION;

  num? _RA_OF_ASC_NODE;
  num? get RA_OF_ASC_NODE => _$this._RA_OF_ASC_NODE;
  set RA_OF_ASC_NODE(num? RA_OF_ASC_NODE) =>
      _$this._RA_OF_ASC_NODE = RA_OF_ASC_NODE;

  num? _ARG_OF_PERICENTER;
  num? get ARG_OF_PERICENTER => _$this._ARG_OF_PERICENTER;
  set ARG_OF_PERICENTER(num? ARG_OF_PERICENTER) =>
      _$this._ARG_OF_PERICENTER = ARG_OF_PERICENTER;

  num? _MEAN_ANOMALY;
  num? get MEAN_ANOMALY => _$this._MEAN_ANOMALY;
  set MEAN_ANOMALY(num? MEAN_ANOMALY) => _$this._MEAN_ANOMALY = MEAN_ANOMALY;

  int? _EPHEMERIS_TYPE;
  int? get EPHEMERIS_TYPE => _$this._EPHEMERIS_TYPE;
  set EPHEMERIS_TYPE(int? EPHEMERIS_TYPE) =>
      _$this._EPHEMERIS_TYPE = EPHEMERIS_TYPE;

  String? _CLASSIFICATION_TYPE;
  String? get CLASSIFICATION_TYPE => _$this._CLASSIFICATION_TYPE;
  set CLASSIFICATION_TYPE(String? CLASSIFICATION_TYPE) =>
      _$this._CLASSIFICATION_TYPE = CLASSIFICATION_TYPE;

  int? _NORAD_CAT_ID;
  int? get NORAD_CAT_ID => _$this._NORAD_CAT_ID;
  set NORAD_CAT_ID(int? NORAD_CAT_ID) => _$this._NORAD_CAT_ID = NORAD_CAT_ID;

  int? _ELEMENT_SET_NO;
  int? get ELEMENT_SET_NO => _$this._ELEMENT_SET_NO;
  set ELEMENT_SET_NO(int? ELEMENT_SET_NO) =>
      _$this._ELEMENT_SET_NO = ELEMENT_SET_NO;

  int? _REV_AT_EPOCH;
  int? get REV_AT_EPOCH => _$this._REV_AT_EPOCH;
  set REV_AT_EPOCH(int? REV_AT_EPOCH) => _$this._REV_AT_EPOCH = REV_AT_EPOCH;

  num? _BSTAR;
  num? get BSTAR => _$this._BSTAR;
  set BSTAR(num? BSTAR) => _$this._BSTAR = BSTAR;

  num? _MEAN_MOTION_DOT;
  num? get MEAN_MOTION_DOT => _$this._MEAN_MOTION_DOT;
  set MEAN_MOTION_DOT(num? MEAN_MOTION_DOT) =>
      _$this._MEAN_MOTION_DOT = MEAN_MOTION_DOT;

  num? _MEAN_MOTION_DDOT;
  num? get MEAN_MOTION_DDOT => _$this._MEAN_MOTION_DDOT;
  set MEAN_MOTION_DDOT(num? MEAN_MOTION_DDOT) =>
      _$this._MEAN_MOTION_DDOT = MEAN_MOTION_DDOT;

  CelestrakGpElementBuilder() {
    CelestrakGpElement._defaults(this);
  }

  CelestrakGpElementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _OBJECT_NAME = $v.OBJECT_NAME;
      _OBJECT_ID = $v.OBJECT_ID;
      _EPOCH = $v.EPOCH;
      _MEAN_MOTION = $v.MEAN_MOTION;
      _ECCENTRICITY = $v.ECCENTRICITY;
      _INCLINATION = $v.INCLINATION;
      _RA_OF_ASC_NODE = $v.RA_OF_ASC_NODE;
      _ARG_OF_PERICENTER = $v.ARG_OF_PERICENTER;
      _MEAN_ANOMALY = $v.MEAN_ANOMALY;
      _EPHEMERIS_TYPE = $v.EPHEMERIS_TYPE;
      _CLASSIFICATION_TYPE = $v.CLASSIFICATION_TYPE;
      _NORAD_CAT_ID = $v.NORAD_CAT_ID;
      _ELEMENT_SET_NO = $v.ELEMENT_SET_NO;
      _REV_AT_EPOCH = $v.REV_AT_EPOCH;
      _BSTAR = $v.BSTAR;
      _MEAN_MOTION_DOT = $v.MEAN_MOTION_DOT;
      _MEAN_MOTION_DDOT = $v.MEAN_MOTION_DDOT;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CelestrakGpElement other) {
    _$v = other as _$CelestrakGpElement;
  }

  @override
  void update(void Function(CelestrakGpElementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CelestrakGpElement build() => _build();

  _$CelestrakGpElement _build() {
    final _$result =
        _$v ??
        _$CelestrakGpElement._(
          OBJECT_NAME: BuiltValueNullFieldError.checkNotNull(
            OBJECT_NAME,
            r'CelestrakGpElement',
            'OBJECT_NAME',
          ),
          OBJECT_ID: BuiltValueNullFieldError.checkNotNull(
            OBJECT_ID,
            r'CelestrakGpElement',
            'OBJECT_ID',
          ),
          EPOCH: BuiltValueNullFieldError.checkNotNull(
            EPOCH,
            r'CelestrakGpElement',
            'EPOCH',
          ),
          MEAN_MOTION: BuiltValueNullFieldError.checkNotNull(
            MEAN_MOTION,
            r'CelestrakGpElement',
            'MEAN_MOTION',
          ),
          ECCENTRICITY: BuiltValueNullFieldError.checkNotNull(
            ECCENTRICITY,
            r'CelestrakGpElement',
            'ECCENTRICITY',
          ),
          INCLINATION: BuiltValueNullFieldError.checkNotNull(
            INCLINATION,
            r'CelestrakGpElement',
            'INCLINATION',
          ),
          RA_OF_ASC_NODE: BuiltValueNullFieldError.checkNotNull(
            RA_OF_ASC_NODE,
            r'CelestrakGpElement',
            'RA_OF_ASC_NODE',
          ),
          ARG_OF_PERICENTER: BuiltValueNullFieldError.checkNotNull(
            ARG_OF_PERICENTER,
            r'CelestrakGpElement',
            'ARG_OF_PERICENTER',
          ),
          MEAN_ANOMALY: BuiltValueNullFieldError.checkNotNull(
            MEAN_ANOMALY,
            r'CelestrakGpElement',
            'MEAN_ANOMALY',
          ),
          EPHEMERIS_TYPE: EPHEMERIS_TYPE,
          CLASSIFICATION_TYPE: CLASSIFICATION_TYPE,
          NORAD_CAT_ID: BuiltValueNullFieldError.checkNotNull(
            NORAD_CAT_ID,
            r'CelestrakGpElement',
            'NORAD_CAT_ID',
          ),
          ELEMENT_SET_NO: ELEMENT_SET_NO,
          REV_AT_EPOCH: REV_AT_EPOCH,
          BSTAR: BSTAR,
          MEAN_MOTION_DOT: MEAN_MOTION_DOT,
          MEAN_MOTION_DDOT: MEAN_MOTION_DDOT,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
