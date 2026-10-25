// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordination_detected_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CoordinationDetectedEventEventEnum
_$coordinationDetectedEventEventEnum_coordinationPeriodDetected =
    const CoordinationDetectedEventEventEnum._('coordinationPeriodDetected');
const CoordinationDetectedEventEventEnum
_$coordinationDetectedEventEventEnum_unknownDefaultOpenApi =
    const CoordinationDetectedEventEventEnum._('unknownDefaultOpenApi');

CoordinationDetectedEventEventEnum _$coordinationDetectedEventEventEnumValueOf(
  String name,
) {
  switch (name) {
    case 'coordinationPeriodDetected':
      return _$coordinationDetectedEventEventEnum_coordinationPeriodDetected;
    case 'unknownDefaultOpenApi':
      return _$coordinationDetectedEventEventEnum_unknownDefaultOpenApi;
    default:
      return _$coordinationDetectedEventEventEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CoordinationDetectedEventEventEnum>
_$coordinationDetectedEventEventEnumValues =
    BuiltSet<CoordinationDetectedEventEventEnum>(
      const <CoordinationDetectedEventEventEnum>[
        _$coordinationDetectedEventEventEnum_coordinationPeriodDetected,
        _$coordinationDetectedEventEventEnum_unknownDefaultOpenApi,
      ],
    );

const CoordinationDetectedEventSignificantIndicatorsEnum
_$coordinationDetectedEventSignificantIndicatorsEnum_synchrony =
    const CoordinationDetectedEventSignificantIndicatorsEnum._('synchrony');
const CoordinationDetectedEventSignificantIndicatorsEnum
_$coordinationDetectedEventSignificantIndicatorsEnum_textDuplication =
    const CoordinationDetectedEventSignificantIndicatorsEnum._(
      'textDuplication',
    );
const CoordinationDetectedEventSignificantIndicatorsEnum
_$coordinationDetectedEventSignificantIndicatorsEnum_accountAgeSkew =
    const CoordinationDetectedEventSignificantIndicatorsEnum._(
      'accountAgeSkew',
    );
const CoordinationDetectedEventSignificantIndicatorsEnum
_$coordinationDetectedEventSignificantIndicatorsEnum_coRepostBursts =
    const CoordinationDetectedEventSignificantIndicatorsEnum._(
      'coRepostBursts',
    );
const CoordinationDetectedEventSignificantIndicatorsEnum
_$coordinationDetectedEventSignificantIndicatorsEnum_unknownDefaultOpenApi =
    const CoordinationDetectedEventSignificantIndicatorsEnum._(
      'unknownDefaultOpenApi',
    );

CoordinationDetectedEventSignificantIndicatorsEnum
_$coordinationDetectedEventSignificantIndicatorsEnumValueOf(String name) {
  switch (name) {
    case 'synchrony':
      return _$coordinationDetectedEventSignificantIndicatorsEnum_synchrony;
    case 'textDuplication':
      return _$coordinationDetectedEventSignificantIndicatorsEnum_textDuplication;
    case 'accountAgeSkew':
      return _$coordinationDetectedEventSignificantIndicatorsEnum_accountAgeSkew;
    case 'coRepostBursts':
      return _$coordinationDetectedEventSignificantIndicatorsEnum_coRepostBursts;
    case 'unknownDefaultOpenApi':
      return _$coordinationDetectedEventSignificantIndicatorsEnum_unknownDefaultOpenApi;
    default:
      return _$coordinationDetectedEventSignificantIndicatorsEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CoordinationDetectedEventSignificantIndicatorsEnum>
_$coordinationDetectedEventSignificantIndicatorsEnumValues =
    BuiltSet<CoordinationDetectedEventSignificantIndicatorsEnum>(const <
      CoordinationDetectedEventSignificantIndicatorsEnum
    >[
      _$coordinationDetectedEventSignificantIndicatorsEnum_synchrony,
      _$coordinationDetectedEventSignificantIndicatorsEnum_textDuplication,
      _$coordinationDetectedEventSignificantIndicatorsEnum_accountAgeSkew,
      _$coordinationDetectedEventSignificantIndicatorsEnum_coRepostBursts,
      _$coordinationDetectedEventSignificantIndicatorsEnum_unknownDefaultOpenApi,
    ]);

Serializer<CoordinationDetectedEventEventEnum>
_$coordinationDetectedEventEventEnumSerializer =
    _$CoordinationDetectedEventEventEnumSerializer();
Serializer<CoordinationDetectedEventSignificantIndicatorsEnum>
_$coordinationDetectedEventSignificantIndicatorsEnumSerializer =
    _$CoordinationDetectedEventSignificantIndicatorsEnumSerializer();

class _$CoordinationDetectedEventEventEnumSerializer
    implements PrimitiveSerializer<CoordinationDetectedEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'coordinationPeriodDetected': 'coordination.detected',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'coordination.detected': 'coordinationPeriodDetected',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CoordinationDetectedEventEventEnum];
  @override
  final String wireName = 'CoordinationDetectedEventEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    CoordinationDetectedEventEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CoordinationDetectedEventEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CoordinationDetectedEventEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CoordinationDetectedEventSignificantIndicatorsEnumSerializer
    implements
        PrimitiveSerializer<
          CoordinationDetectedEventSignificantIndicatorsEnum
        > {
  static const Map<String, Object> _toWire = const <String, Object>{
    'synchrony': 'synchrony',
    'textDuplication': 'textDuplication',
    'accountAgeSkew': 'accountAgeSkew',
    'coRepostBursts': 'coRepostBursts',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'synchrony': 'synchrony',
    'textDuplication': 'textDuplication',
    'accountAgeSkew': 'accountAgeSkew',
    'coRepostBursts': 'coRepostBursts',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CoordinationDetectedEventSignificantIndicatorsEnum,
  ];
  @override
  final String wireName = 'CoordinationDetectedEventSignificantIndicatorsEnum';

  @override
  Object serialize(
    Serializers serializers,
    CoordinationDetectedEventSignificantIndicatorsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CoordinationDetectedEventSignificantIndicatorsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CoordinationDetectedEventSignificantIndicatorsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CoordinationDetectedEvent extends CoordinationDetectedEvent {
  @override
  final CoordinationDetectedEventEventEnum event;
  @override
  final String findingId;
  @override
  final String narrativeId;
  @override
  final BuiltList<CoordinationDetectedEventSignificantIndicatorsEnum>
  significantIndicators;
  @override
  final DateTime at;

  factory _$CoordinationDetectedEvent([
    void Function(CoordinationDetectedEventBuilder)? updates,
  ]) => (CoordinationDetectedEventBuilder()..update(updates))._build();

  _$CoordinationDetectedEvent._({
    required this.event,
    required this.findingId,
    required this.narrativeId,
    required this.significantIndicators,
    required this.at,
  }) : super._();
  @override
  CoordinationDetectedEvent rebuild(
    void Function(CoordinationDetectedEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CoordinationDetectedEventBuilder toBuilder() =>
      CoordinationDetectedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoordinationDetectedEvent &&
        event == other.event &&
        findingId == other.findingId &&
        narrativeId == other.narrativeId &&
        significantIndicators == other.significantIndicators &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, findingId.hashCode);
    _$hash = $jc(_$hash, narrativeId.hashCode);
    _$hash = $jc(_$hash, significantIndicators.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoordinationDetectedEvent')
          ..add('event', event)
          ..add('findingId', findingId)
          ..add('narrativeId', narrativeId)
          ..add('significantIndicators', significantIndicators)
          ..add('at', at))
        .toString();
  }
}

class CoordinationDetectedEventBuilder
    implements
        Builder<CoordinationDetectedEvent, CoordinationDetectedEventBuilder> {
  _$CoordinationDetectedEvent? _$v;

  CoordinationDetectedEventEventEnum? _event;
  CoordinationDetectedEventEventEnum? get event => _$this._event;
  set event(CoordinationDetectedEventEventEnum? event) => _$this._event = event;

  String? _findingId;
  String? get findingId => _$this._findingId;
  set findingId(String? findingId) => _$this._findingId = findingId;

  String? _narrativeId;
  String? get narrativeId => _$this._narrativeId;
  set narrativeId(String? narrativeId) => _$this._narrativeId = narrativeId;

  ListBuilder<CoordinationDetectedEventSignificantIndicatorsEnum>?
  _significantIndicators;
  ListBuilder<CoordinationDetectedEventSignificantIndicatorsEnum>
  get significantIndicators => _$this._significantIndicators ??=
      ListBuilder<CoordinationDetectedEventSignificantIndicatorsEnum>();
  set significantIndicators(
    ListBuilder<CoordinationDetectedEventSignificantIndicatorsEnum>?
    significantIndicators,
  ) => _$this._significantIndicators = significantIndicators;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  CoordinationDetectedEventBuilder() {
    CoordinationDetectedEvent._defaults(this);
  }

  CoordinationDetectedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _findingId = $v.findingId;
      _narrativeId = $v.narrativeId;
      _significantIndicators = $v.significantIndicators.toBuilder();
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoordinationDetectedEvent other) {
    _$v = other as _$CoordinationDetectedEvent;
  }

  @override
  void update(void Function(CoordinationDetectedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoordinationDetectedEvent build() => _build();

  _$CoordinationDetectedEvent _build() {
    _$CoordinationDetectedEvent _$result;
    try {
      _$result =
          _$v ??
          _$CoordinationDetectedEvent._(
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'CoordinationDetectedEvent',
              'event',
            ),
            findingId: BuiltValueNullFieldError.checkNotNull(
              findingId,
              r'CoordinationDetectedEvent',
              'findingId',
            ),
            narrativeId: BuiltValueNullFieldError.checkNotNull(
              narrativeId,
              r'CoordinationDetectedEvent',
              'narrativeId',
            ),
            significantIndicators: significantIndicators.build(),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'CoordinationDetectedEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'significantIndicators';
        significantIndicators.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CoordinationDetectedEvent',
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
