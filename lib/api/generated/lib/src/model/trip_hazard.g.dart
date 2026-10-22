// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_hazard.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TripHazardSectionEnum _$tripHazardSectionEnum_onRoute =
    const TripHazardSectionEnum._('onRoute');
const TripHazardSectionEnum _$tripHazardSectionEnum_nearRoute =
    const TripHazardSectionEnum._('nearRoute');
const TripHazardSectionEnum _$tripHazardSectionEnum_timing =
    const TripHazardSectionEnum._('timing');

TripHazardSectionEnum _$tripHazardSectionEnumValueOf(String name) {
  switch (name) {
    case 'onRoute':
      return _$tripHazardSectionEnum_onRoute;
    case 'nearRoute':
      return _$tripHazardSectionEnum_nearRoute;
    case 'timing':
      return _$tripHazardSectionEnum_timing;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TripHazardSectionEnum> _$tripHazardSectionEnumValues =
    BuiltSet<TripHazardSectionEnum>(const <TripHazardSectionEnum>[
  _$tripHazardSectionEnum_onRoute,
  _$tripHazardSectionEnum_nearRoute,
  _$tripHazardSectionEnum_timing,
]);

Serializer<TripHazardSectionEnum> _$tripHazardSectionEnumSerializer =
    _$TripHazardSectionEnumSerializer();

class _$TripHazardSectionEnumSerializer
    implements PrimitiveSerializer<TripHazardSectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'onRoute': 'on-route',
    'nearRoute': 'near-route',
    'timing': 'timing',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'on-route': 'onRoute',
    'near-route': 'nearRoute',
    'timing': 'timing',
  };

  @override
  final Iterable<Type> types = const <Type>[TripHazardSectionEnum];
  @override
  final String wireName = 'TripHazardSectionEnum';

  @override
  Object serialize(Serializers serializers, TripHazardSectionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TripHazardSectionEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TripHazardSectionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TripHazard extends TripHazard {
  @override
  final String ref;
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final String kind;
  @override
  final String? title;
  @override
  final Severity? severity;
  @override
  final TripHazardSectionEnum section;
  @override
  final num distanceAlongRouteM;
  @override
  final num? distanceFromRouteM;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validUntil;
  @override
  final bool? ahead;
  @override
  final num? etaSeconds;

  factory _$TripHazard([void Function(TripHazardBuilder)? updates]) =>
      (TripHazardBuilder()..update(updates))._build();

  _$TripHazard._(
      {required this.ref,
      required this.sourceId,
      required this.externalId,
      required this.kind,
      this.title,
      this.severity,
      required this.section,
      required this.distanceAlongRouteM,
      this.distanceFromRouteM,
      this.validFrom,
      this.validUntil,
      this.ahead,
      this.etaSeconds})
      : super._();
  @override
  TripHazard rebuild(void Function(TripHazardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripHazardBuilder toBuilder() => TripHazardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TripHazard &&
        ref == other.ref &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        kind == other.kind &&
        title == other.title &&
        severity == other.severity &&
        section == other.section &&
        distanceAlongRouteM == other.distanceAlongRouteM &&
        distanceFromRouteM == other.distanceFromRouteM &&
        validFrom == other.validFrom &&
        validUntil == other.validUntil &&
        ahead == other.ahead &&
        etaSeconds == other.etaSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, section.hashCode);
    _$hash = $jc(_$hash, distanceAlongRouteM.hashCode);
    _$hash = $jc(_$hash, distanceFromRouteM.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, ahead.hashCode);
    _$hash = $jc(_$hash, etaSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TripHazard')
          ..add('ref', ref)
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('title', title)
          ..add('severity', severity)
          ..add('section', section)
          ..add('distanceAlongRouteM', distanceAlongRouteM)
          ..add('distanceFromRouteM', distanceFromRouteM)
          ..add('validFrom', validFrom)
          ..add('validUntil', validUntil)
          ..add('ahead', ahead)
          ..add('etaSeconds', etaSeconds))
        .toString();
  }
}

class TripHazardBuilder implements Builder<TripHazard, TripHazardBuilder> {
  _$TripHazard? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  TripHazardSectionEnum? _section;
  TripHazardSectionEnum? get section => _$this._section;
  set section(TripHazardSectionEnum? section) => _$this._section = section;

  num? _distanceAlongRouteM;
  num? get distanceAlongRouteM => _$this._distanceAlongRouteM;
  set distanceAlongRouteM(num? distanceAlongRouteM) =>
      _$this._distanceAlongRouteM = distanceAlongRouteM;

  num? _distanceFromRouteM;
  num? get distanceFromRouteM => _$this._distanceFromRouteM;
  set distanceFromRouteM(num? distanceFromRouteM) =>
      _$this._distanceFromRouteM = distanceFromRouteM;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  bool? _ahead;
  bool? get ahead => _$this._ahead;
  set ahead(bool? ahead) => _$this._ahead = ahead;

  num? _etaSeconds;
  num? get etaSeconds => _$this._etaSeconds;
  set etaSeconds(num? etaSeconds) => _$this._etaSeconds = etaSeconds;

  TripHazardBuilder() {
    TripHazard._defaults(this);
  }

  TripHazardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _title = $v.title;
      _severity = $v.severity;
      _section = $v.section;
      _distanceAlongRouteM = $v.distanceAlongRouteM;
      _distanceFromRouteM = $v.distanceFromRouteM;
      _validFrom = $v.validFrom;
      _validUntil = $v.validUntil;
      _ahead = $v.ahead;
      _etaSeconds = $v.etaSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TripHazard other) {
    _$v = other as _$TripHazard;
  }

  @override
  void update(void Function(TripHazardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TripHazard build() => _build();

  _$TripHazard _build() {
    final _$result = _$v ??
        _$TripHazard._(
          ref: BuiltValueNullFieldError.checkNotNull(ref, r'TripHazard', 'ref'),
          sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId, r'TripHazard', 'sourceId'),
          externalId: BuiltValueNullFieldError.checkNotNull(
              externalId, r'TripHazard', 'externalId'),
          kind: BuiltValueNullFieldError.checkNotNull(
              kind, r'TripHazard', 'kind'),
          title: title,
          severity: severity,
          section: BuiltValueNullFieldError.checkNotNull(
              section, r'TripHazard', 'section'),
          distanceAlongRouteM: BuiltValueNullFieldError.checkNotNull(
              distanceAlongRouteM, r'TripHazard', 'distanceAlongRouteM'),
          distanceFromRouteM: distanceFromRouteM,
          validFrom: validFrom,
          validUntil: validUntil,
          ahead: ahead,
          etaSeconds: etaSeconds,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
