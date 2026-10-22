// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set_input_ledger_question_resolver.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisSetInputLedgerQuestionResolverTypeEnum
_$hypothesisSetInputLedgerQuestionResolverTypeEnum_hypothesisOutcome =
    const HypothesisSetInputLedgerQuestionResolverTypeEnum._(
      'hypothesisOutcome',
    );
const HypothesisSetInputLedgerQuestionResolverTypeEnum
_$hypothesisSetInputLedgerQuestionResolverTypeEnum_eventExists =
    const HypothesisSetInputLedgerQuestionResolverTypeEnum._('eventExists');
const HypothesisSetInputLedgerQuestionResolverTypeEnum
_$hypothesisSetInputLedgerQuestionResolverTypeEnum_countThreshold =
    const HypothesisSetInputLedgerQuestionResolverTypeEnum._('countThreshold');
const HypothesisSetInputLedgerQuestionResolverTypeEnum
_$hypothesisSetInputLedgerQuestionResolverTypeEnum_seriesValue =
    const HypothesisSetInputLedgerQuestionResolverTypeEnum._('seriesValue');
const HypothesisSetInputLedgerQuestionResolverTypeEnum
_$hypothesisSetInputLedgerQuestionResolverTypeEnum_alertFired =
    const HypothesisSetInputLedgerQuestionResolverTypeEnum._('alertFired');
const HypothesisSetInputLedgerQuestionResolverTypeEnum
_$hypothesisSetInputLedgerQuestionResolverTypeEnum_situationStatus =
    const HypothesisSetInputLedgerQuestionResolverTypeEnum._('situationStatus');
const HypothesisSetInputLedgerQuestionResolverTypeEnum
_$hypothesisSetInputLedgerQuestionResolverTypeEnum_manual =
    const HypothesisSetInputLedgerQuestionResolverTypeEnum._('manual');

HypothesisSetInputLedgerQuestionResolverTypeEnum
_$hypothesisSetInputLedgerQuestionResolverTypeEnumValueOf(String name) {
  switch (name) {
    case 'hypothesisOutcome':
      return _$hypothesisSetInputLedgerQuestionResolverTypeEnum_hypothesisOutcome;
    case 'eventExists':
      return _$hypothesisSetInputLedgerQuestionResolverTypeEnum_eventExists;
    case 'countThreshold':
      return _$hypothesisSetInputLedgerQuestionResolverTypeEnum_countThreshold;
    case 'seriesValue':
      return _$hypothesisSetInputLedgerQuestionResolverTypeEnum_seriesValue;
    case 'alertFired':
      return _$hypothesisSetInputLedgerQuestionResolverTypeEnum_alertFired;
    case 'situationStatus':
      return _$hypothesisSetInputLedgerQuestionResolverTypeEnum_situationStatus;
    case 'manual':
      return _$hypothesisSetInputLedgerQuestionResolverTypeEnum_manual;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HypothesisSetInputLedgerQuestionResolverTypeEnum>
_$hypothesisSetInputLedgerQuestionResolverTypeEnumValues =
    BuiltSet<HypothesisSetInputLedgerQuestionResolverTypeEnum>(
      const <HypothesisSetInputLedgerQuestionResolverTypeEnum>[
        _$hypothesisSetInputLedgerQuestionResolverTypeEnum_hypothesisOutcome,
        _$hypothesisSetInputLedgerQuestionResolverTypeEnum_eventExists,
        _$hypothesisSetInputLedgerQuestionResolverTypeEnum_countThreshold,
        _$hypothesisSetInputLedgerQuestionResolverTypeEnum_seriesValue,
        _$hypothesisSetInputLedgerQuestionResolverTypeEnum_alertFired,
        _$hypothesisSetInputLedgerQuestionResolverTypeEnum_situationStatus,
        _$hypothesisSetInputLedgerQuestionResolverTypeEnum_manual,
      ],
    );

Serializer<HypothesisSetInputLedgerQuestionResolverTypeEnum>
_$hypothesisSetInputLedgerQuestionResolverTypeEnumSerializer =
    _$HypothesisSetInputLedgerQuestionResolverTypeEnumSerializer();

class _$HypothesisSetInputLedgerQuestionResolverTypeEnumSerializer
    implements
        PrimitiveSerializer<HypothesisSetInputLedgerQuestionResolverTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hypothesisOutcome': 'hypothesis-outcome',
    'eventExists': 'event-exists',
    'countThreshold': 'count-threshold',
    'seriesValue': 'series-value',
    'alertFired': 'alert-fired',
    'situationStatus': 'situation-status',
    'manual': 'manual',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hypothesis-outcome': 'hypothesisOutcome',
    'event-exists': 'eventExists',
    'count-threshold': 'countThreshold',
    'series-value': 'seriesValue',
    'alert-fired': 'alertFired',
    'situation-status': 'situationStatus',
    'manual': 'manual',
  };

  @override
  final Iterable<Type> types = const <Type>[
    HypothesisSetInputLedgerQuestionResolverTypeEnum,
  ];
  @override
  final String wireName = 'HypothesisSetInputLedgerQuestionResolverTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetInputLedgerQuestionResolverTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisSetInputLedgerQuestionResolverTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisSetInputLedgerQuestionResolverTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisSetInputLedgerQuestionResolver
    extends HypothesisSetInputLedgerQuestionResolver {
  @override
  final HypothesisSetInputLedgerQuestionResolverTypeEnum type;
  @override
  final BuiltMap<String, JsonObject?>? params;

  factory _$HypothesisSetInputLedgerQuestionResolver([
    void Function(HypothesisSetInputLedgerQuestionResolverBuilder)? updates,
  ]) => (HypothesisSetInputLedgerQuestionResolverBuilder()..update(updates))
      ._build();

  _$HypothesisSetInputLedgerQuestionResolver._({
    required this.type,
    this.params,
  }) : super._();
  @override
  HypothesisSetInputLedgerQuestionResolver rebuild(
    void Function(HypothesisSetInputLedgerQuestionResolverBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisSetInputLedgerQuestionResolverBuilder toBuilder() =>
      HypothesisSetInputLedgerQuestionResolverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSetInputLedgerQuestionResolver &&
        type == other.type &&
        params == other.params;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HypothesisSetInputLedgerQuestionResolver',
          )
          ..add('type', type)
          ..add('params', params))
        .toString();
  }
}

class HypothesisSetInputLedgerQuestionResolverBuilder
    implements
        Builder<
          HypothesisSetInputLedgerQuestionResolver,
          HypothesisSetInputLedgerQuestionResolverBuilder
        > {
  _$HypothesisSetInputLedgerQuestionResolver? _$v;

  HypothesisSetInputLedgerQuestionResolverTypeEnum? _type;
  HypothesisSetInputLedgerQuestionResolverTypeEnum? get type => _$this._type;
  set type(HypothesisSetInputLedgerQuestionResolverTypeEnum? type) =>
      _$this._type = type;

  MapBuilder<String, JsonObject?>? _params;
  MapBuilder<String, JsonObject?> get params =>
      _$this._params ??= MapBuilder<String, JsonObject?>();
  set params(MapBuilder<String, JsonObject?>? params) =>
      _$this._params = params;

  HypothesisSetInputLedgerQuestionResolverBuilder() {
    HypothesisSetInputLedgerQuestionResolver._defaults(this);
  }

  HypothesisSetInputLedgerQuestionResolverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _params = $v.params?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSetInputLedgerQuestionResolver other) {
    _$v = other as _$HypothesisSetInputLedgerQuestionResolver;
  }

  @override
  void update(
    void Function(HypothesisSetInputLedgerQuestionResolverBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSetInputLedgerQuestionResolver build() => _build();

  _$HypothesisSetInputLedgerQuestionResolver _build() {
    _$HypothesisSetInputLedgerQuestionResolver _$result;
    try {
      _$result =
          _$v ??
          _$HypothesisSetInputLedgerQuestionResolver._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'HypothesisSetInputLedgerQuestionResolver',
              'type',
            ),
            params: _params?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HypothesisSetInputLedgerQuestionResolver',
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
