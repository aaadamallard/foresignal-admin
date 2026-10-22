// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'impact_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImpactRateSource_Enum _$impactRateSourceEnum_ownHistory =
    const ImpactRateSource_Enum._('ownHistory');
const ImpactRateSource_Enum _$impactRateSourceEnum_referenceImport =
    const ImpactRateSource_Enum._('referenceImport');
const ImpactRateSource_Enum _$impactRateSourceEnum_mixed =
    const ImpactRateSource_Enum._('mixed');

ImpactRateSource_Enum _$impactRateSourceEnumValueOf(String name) {
  switch (name) {
    case 'ownHistory':
      return _$impactRateSourceEnum_ownHistory;
    case 'referenceImport':
      return _$impactRateSourceEnum_referenceImport;
    case 'mixed':
      return _$impactRateSourceEnum_mixed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ImpactRateSource_Enum> _$impactRateSourceEnumValues =
    BuiltSet<ImpactRateSource_Enum>(const <ImpactRateSource_Enum>[
  _$impactRateSourceEnum_ownHistory,
  _$impactRateSourceEnum_referenceImport,
  _$impactRateSourceEnum_mixed,
]);

const ImpactRateStatusEnum _$impactRateStatusEnum_ok =
    const ImpactRateStatusEnum._('ok');
const ImpactRateStatusEnum _$impactRateStatusEnum_insufficient =
    const ImpactRateStatusEnum._('insufficient');

ImpactRateStatusEnum _$impactRateStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$impactRateStatusEnum_ok;
    case 'insufficient':
      return _$impactRateStatusEnum_insufficient;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ImpactRateStatusEnum> _$impactRateStatusEnumValues =
    BuiltSet<ImpactRateStatusEnum>(const <ImpactRateStatusEnum>[
  _$impactRateStatusEnum_ok,
  _$impactRateStatusEnum_insufficient,
]);

Serializer<ImpactRateSource_Enum> _$impactRateSourceEnumSerializer =
    _$ImpactRateSource_EnumSerializer();
Serializer<ImpactRateStatusEnum> _$impactRateStatusEnumSerializer =
    _$ImpactRateStatusEnumSerializer();

class _$ImpactRateSource_EnumSerializer
    implements PrimitiveSerializer<ImpactRateSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ownHistory': 'own-history',
    'referenceImport': 'reference-import',
    'mixed': 'mixed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'own-history': 'ownHistory',
    'reference-import': 'referenceImport',
    'mixed': 'mixed',
  };

  @override
  final Iterable<Type> types = const <Type>[ImpactRateSource_Enum];
  @override
  final String wireName = 'ImpactRateSource_Enum';

  @override
  Object serialize(Serializers serializers, ImpactRateSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ImpactRateSource_Enum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ImpactRateSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ImpactRateStatusEnumSerializer
    implements PrimitiveSerializer<ImpactRateStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };

  @override
  final Iterable<Type> types = const <Type>[ImpactRateStatusEnum];
  @override
  final String wireName = 'ImpactRateStatusEnum';

  @override
  Object serialize(Serializers serializers, ImpactRateStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ImpactRateStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ImpactRateStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ImpactRate extends ImpactRate {
  @override
  final String hazardClass;
  @override
  final String impactFamily;
  @override
  final String regionClass;
  @override
  final int? lagHours;
  @override
  final num? rate;
  @override
  final ImpactRateInterval? interval;
  @override
  final int n;
  @override
  final int? nImpacts;
  @override
  final ImpactRateSource_Enum? source_;
  @override
  final ImpactRateStatusEnum status;
  @override
  final String? baseRateId;
  @override
  final DateTime computedAt;

  factory _$ImpactRate([void Function(ImpactRateBuilder)? updates]) =>
      (ImpactRateBuilder()..update(updates))._build();

  _$ImpactRate._(
      {required this.hazardClass,
      required this.impactFamily,
      required this.regionClass,
      this.lagHours,
      this.rate,
      this.interval,
      required this.n,
      this.nImpacts,
      this.source_,
      required this.status,
      this.baseRateId,
      required this.computedAt})
      : super._();
  @override
  ImpactRate rebuild(void Function(ImpactRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImpactRateBuilder toBuilder() => ImpactRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImpactRate &&
        hazardClass == other.hazardClass &&
        impactFamily == other.impactFamily &&
        regionClass == other.regionClass &&
        lagHours == other.lagHours &&
        rate == other.rate &&
        interval == other.interval &&
        n == other.n &&
        nImpacts == other.nImpacts &&
        source_ == other.source_ &&
        status == other.status &&
        baseRateId == other.baseRateId &&
        computedAt == other.computedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hazardClass.hashCode);
    _$hash = $jc(_$hash, impactFamily.hashCode);
    _$hash = $jc(_$hash, regionClass.hashCode);
    _$hash = $jc(_$hash, lagHours.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, nImpacts.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, baseRateId.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImpactRate')
          ..add('hazardClass', hazardClass)
          ..add('impactFamily', impactFamily)
          ..add('regionClass', regionClass)
          ..add('lagHours', lagHours)
          ..add('rate', rate)
          ..add('interval', interval)
          ..add('n', n)
          ..add('nImpacts', nImpacts)
          ..add('source_', source_)
          ..add('status', status)
          ..add('baseRateId', baseRateId)
          ..add('computedAt', computedAt))
        .toString();
  }
}

class ImpactRateBuilder implements Builder<ImpactRate, ImpactRateBuilder> {
  _$ImpactRate? _$v;

  String? _hazardClass;
  String? get hazardClass => _$this._hazardClass;
  set hazardClass(String? hazardClass) => _$this._hazardClass = hazardClass;

  String? _impactFamily;
  String? get impactFamily => _$this._impactFamily;
  set impactFamily(String? impactFamily) => _$this._impactFamily = impactFamily;

  String? _regionClass;
  String? get regionClass => _$this._regionClass;
  set regionClass(String? regionClass) => _$this._regionClass = regionClass;

  int? _lagHours;
  int? get lagHours => _$this._lagHours;
  set lagHours(int? lagHours) => _$this._lagHours = lagHours;

  num? _rate;
  num? get rate => _$this._rate;
  set rate(num? rate) => _$this._rate = rate;

  ImpactRateIntervalBuilder? _interval;
  ImpactRateIntervalBuilder get interval =>
      _$this._interval ??= ImpactRateIntervalBuilder();
  set interval(ImpactRateIntervalBuilder? interval) =>
      _$this._interval = interval;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  int? _nImpacts;
  int? get nImpacts => _$this._nImpacts;
  set nImpacts(int? nImpacts) => _$this._nImpacts = nImpacts;

  ImpactRateSource_Enum? _source_;
  ImpactRateSource_Enum? get source_ => _$this._source_;
  set source_(ImpactRateSource_Enum? source_) => _$this._source_ = source_;

  ImpactRateStatusEnum? _status;
  ImpactRateStatusEnum? get status => _$this._status;
  set status(ImpactRateStatusEnum? status) => _$this._status = status;

  String? _baseRateId;
  String? get baseRateId => _$this._baseRateId;
  set baseRateId(String? baseRateId) => _$this._baseRateId = baseRateId;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  ImpactRateBuilder() {
    ImpactRate._defaults(this);
  }

  ImpactRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hazardClass = $v.hazardClass;
      _impactFamily = $v.impactFamily;
      _regionClass = $v.regionClass;
      _lagHours = $v.lagHours;
      _rate = $v.rate;
      _interval = $v.interval?.toBuilder();
      _n = $v.n;
      _nImpacts = $v.nImpacts;
      _source_ = $v.source_;
      _status = $v.status;
      _baseRateId = $v.baseRateId;
      _computedAt = $v.computedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImpactRate other) {
    _$v = other as _$ImpactRate;
  }

  @override
  void update(void Function(ImpactRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImpactRate build() => _build();

  _$ImpactRate _build() {
    _$ImpactRate _$result;
    try {
      _$result = _$v ??
          _$ImpactRate._(
            hazardClass: BuiltValueNullFieldError.checkNotNull(
                hazardClass, r'ImpactRate', 'hazardClass'),
            impactFamily: BuiltValueNullFieldError.checkNotNull(
                impactFamily, r'ImpactRate', 'impactFamily'),
            regionClass: BuiltValueNullFieldError.checkNotNull(
                regionClass, r'ImpactRate', 'regionClass'),
            lagHours: lagHours,
            rate: rate,
            interval: _interval?.build(),
            n: BuiltValueNullFieldError.checkNotNull(n, r'ImpactRate', 'n'),
            nImpacts: nImpacts,
            source_: source_,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ImpactRate', 'status'),
            baseRateId: baseRateId,
            computedAt: BuiltValueNullFieldError.checkNotNull(
                computedAt, r'ImpactRate', 'computedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interval';
        _interval?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ImpactRate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
