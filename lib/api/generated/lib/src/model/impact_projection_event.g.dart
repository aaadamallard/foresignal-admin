// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'impact_projection_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnum_tropicalWind34 =
    const ImpactProjectionEventHazardTypeEnum._('tropicalWind34');
const ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnum_tropicalWind50 =
    const ImpactProjectionEventHazardTypeEnum._('tropicalWind50');
const ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnum_tropicalWind64 =
    const ImpactProjectionEventHazardTypeEnum._('tropicalWind64');
const ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnum_tropicalTrack =
    const ImpactProjectionEventHazardTypeEnum._('tropicalTrack');
const ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnum_tornado =
    const ImpactProjectionEventHazardTypeEnum._('tornado');
const ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnum_wind =
    const ImpactProjectionEventHazardTypeEnum._('wind');
const ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnum_hail =
    const ImpactProjectionEventHazardTypeEnum._('hail');
const ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnum_severeCategorical =
    const ImpactProjectionEventHazardTypeEnum._('severeCategorical');
const ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnum_excessiveRain =
    const ImpactProjectionEventHazardTypeEnum._('excessiveRain');
const ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnum_riverFlood =
    const ImpactProjectionEventHazardTypeEnum._('riverFlood');
const ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnum_stormCell =
    const ImpactProjectionEventHazardTypeEnum._('stormCell');

ImpactProjectionEventHazardTypeEnum
_$impactProjectionEventHazardTypeEnumValueOf(String name) {
  switch (name) {
    case 'tropicalWind34':
      return _$impactProjectionEventHazardTypeEnum_tropicalWind34;
    case 'tropicalWind50':
      return _$impactProjectionEventHazardTypeEnum_tropicalWind50;
    case 'tropicalWind64':
      return _$impactProjectionEventHazardTypeEnum_tropicalWind64;
    case 'tropicalTrack':
      return _$impactProjectionEventHazardTypeEnum_tropicalTrack;
    case 'tornado':
      return _$impactProjectionEventHazardTypeEnum_tornado;
    case 'wind':
      return _$impactProjectionEventHazardTypeEnum_wind;
    case 'hail':
      return _$impactProjectionEventHazardTypeEnum_hail;
    case 'severeCategorical':
      return _$impactProjectionEventHazardTypeEnum_severeCategorical;
    case 'excessiveRain':
      return _$impactProjectionEventHazardTypeEnum_excessiveRain;
    case 'riverFlood':
      return _$impactProjectionEventHazardTypeEnum_riverFlood;
    case 'stormCell':
      return _$impactProjectionEventHazardTypeEnum_stormCell;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ImpactProjectionEventHazardTypeEnum>
_$impactProjectionEventHazardTypeEnumValues =
    BuiltSet<ImpactProjectionEventHazardTypeEnum>(
      const <ImpactProjectionEventHazardTypeEnum>[
        _$impactProjectionEventHazardTypeEnum_tropicalWind34,
        _$impactProjectionEventHazardTypeEnum_tropicalWind50,
        _$impactProjectionEventHazardTypeEnum_tropicalWind64,
        _$impactProjectionEventHazardTypeEnum_tropicalTrack,
        _$impactProjectionEventHazardTypeEnum_tornado,
        _$impactProjectionEventHazardTypeEnum_wind,
        _$impactProjectionEventHazardTypeEnum_hail,
        _$impactProjectionEventHazardTypeEnum_severeCategorical,
        _$impactProjectionEventHazardTypeEnum_excessiveRain,
        _$impactProjectionEventHazardTypeEnum_riverFlood,
        _$impactProjectionEventHazardTypeEnum_stormCell,
      ],
    );

Serializer<ImpactProjectionEventHazardTypeEnum>
_$impactProjectionEventHazardTypeEnumSerializer =
    _$ImpactProjectionEventHazardTypeEnumSerializer();

class _$ImpactProjectionEventHazardTypeEnumSerializer
    implements PrimitiveSerializer<ImpactProjectionEventHazardTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tropicalWind34': 'tropical-wind-34',
    'tropicalWind50': 'tropical-wind-50',
    'tropicalWind64': 'tropical-wind-64',
    'tropicalTrack': 'tropical-track',
    'tornado': 'tornado',
    'wind': 'wind',
    'hail': 'hail',
    'severeCategorical': 'severe-categorical',
    'excessiveRain': 'excessive-rain',
    'riverFlood': 'river-flood',
    'stormCell': 'storm-cell',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'tropical-wind-34': 'tropicalWind34',
    'tropical-wind-50': 'tropicalWind50',
    'tropical-wind-64': 'tropicalWind64',
    'tropical-track': 'tropicalTrack',
    'tornado': 'tornado',
    'wind': 'wind',
    'hail': 'hail',
    'severe-categorical': 'severeCategorical',
    'excessive-rain': 'excessiveRain',
    'river-flood': 'riverFlood',
    'storm-cell': 'stormCell',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ImpactProjectionEventHazardTypeEnum,
  ];
  @override
  final String wireName = 'ImpactProjectionEventHazardTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ImpactProjectionEventHazardTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ImpactProjectionEventHazardTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ImpactProjectionEventHazardTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ImpactProjectionEvent extends ImpactProjectionEvent {
  @override
  final String findingId;
  @override
  final ImpactProjectionEventHazardTypeEnum hazardType;
  @override
  final String? sourceRef;
  @override
  final String impactFamily;
  @override
  final String admin1;
  @override
  final num pImpact;
  @override
  final String? questionId;
  @override
  final String? supersededBy;
  @override
  final DateTime at;

  factory _$ImpactProjectionEvent([
    void Function(ImpactProjectionEventBuilder)? updates,
  ]) => (ImpactProjectionEventBuilder()..update(updates))._build();

  _$ImpactProjectionEvent._({
    required this.findingId,
    required this.hazardType,
    this.sourceRef,
    required this.impactFamily,
    required this.admin1,
    required this.pImpact,
    this.questionId,
    this.supersededBy,
    required this.at,
  }) : super._();
  @override
  ImpactProjectionEvent rebuild(
    void Function(ImpactProjectionEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ImpactProjectionEventBuilder toBuilder() =>
      ImpactProjectionEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImpactProjectionEvent &&
        findingId == other.findingId &&
        hazardType == other.hazardType &&
        sourceRef == other.sourceRef &&
        impactFamily == other.impactFamily &&
        admin1 == other.admin1 &&
        pImpact == other.pImpact &&
        questionId == other.questionId &&
        supersededBy == other.supersededBy &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, findingId.hashCode);
    _$hash = $jc(_$hash, hazardType.hashCode);
    _$hash = $jc(_$hash, sourceRef.hashCode);
    _$hash = $jc(_$hash, impactFamily.hashCode);
    _$hash = $jc(_$hash, admin1.hashCode);
    _$hash = $jc(_$hash, pImpact.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, supersededBy.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImpactProjectionEvent')
          ..add('findingId', findingId)
          ..add('hazardType', hazardType)
          ..add('sourceRef', sourceRef)
          ..add('impactFamily', impactFamily)
          ..add('admin1', admin1)
          ..add('pImpact', pImpact)
          ..add('questionId', questionId)
          ..add('supersededBy', supersededBy)
          ..add('at', at))
        .toString();
  }
}

class ImpactProjectionEventBuilder
    implements Builder<ImpactProjectionEvent, ImpactProjectionEventBuilder> {
  _$ImpactProjectionEvent? _$v;

  String? _findingId;
  String? get findingId => _$this._findingId;
  set findingId(String? findingId) => _$this._findingId = findingId;

  ImpactProjectionEventHazardTypeEnum? _hazardType;
  ImpactProjectionEventHazardTypeEnum? get hazardType => _$this._hazardType;
  set hazardType(ImpactProjectionEventHazardTypeEnum? hazardType) =>
      _$this._hazardType = hazardType;

  String? _sourceRef;
  String? get sourceRef => _$this._sourceRef;
  set sourceRef(String? sourceRef) => _$this._sourceRef = sourceRef;

  String? _impactFamily;
  String? get impactFamily => _$this._impactFamily;
  set impactFamily(String? impactFamily) => _$this._impactFamily = impactFamily;

  String? _admin1;
  String? get admin1 => _$this._admin1;
  set admin1(String? admin1) => _$this._admin1 = admin1;

  num? _pImpact;
  num? get pImpact => _$this._pImpact;
  set pImpact(num? pImpact) => _$this._pImpact = pImpact;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  String? _supersededBy;
  String? get supersededBy => _$this._supersededBy;
  set supersededBy(String? supersededBy) => _$this._supersededBy = supersededBy;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ImpactProjectionEventBuilder() {
    ImpactProjectionEvent._defaults(this);
  }

  ImpactProjectionEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _findingId = $v.findingId;
      _hazardType = $v.hazardType;
      _sourceRef = $v.sourceRef;
      _impactFamily = $v.impactFamily;
      _admin1 = $v.admin1;
      _pImpact = $v.pImpact;
      _questionId = $v.questionId;
      _supersededBy = $v.supersededBy;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImpactProjectionEvent other) {
    _$v = other as _$ImpactProjectionEvent;
  }

  @override
  void update(void Function(ImpactProjectionEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImpactProjectionEvent build() => _build();

  _$ImpactProjectionEvent _build() {
    final _$result =
        _$v ??
        _$ImpactProjectionEvent._(
          findingId: BuiltValueNullFieldError.checkNotNull(
            findingId,
            r'ImpactProjectionEvent',
            'findingId',
          ),
          hazardType: BuiltValueNullFieldError.checkNotNull(
            hazardType,
            r'ImpactProjectionEvent',
            'hazardType',
          ),
          sourceRef: sourceRef,
          impactFamily: BuiltValueNullFieldError.checkNotNull(
            impactFamily,
            r'ImpactProjectionEvent',
            'impactFamily',
          ),
          admin1: BuiltValueNullFieldError.checkNotNull(
            admin1,
            r'ImpactProjectionEvent',
            'admin1',
          ),
          pImpact: BuiltValueNullFieldError.checkNotNull(
            pImpact,
            r'ImpactProjectionEvent',
            'pImpact',
          ),
          questionId: questionId,
          supersededBy: supersededBy,
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'ImpactProjectionEvent',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
