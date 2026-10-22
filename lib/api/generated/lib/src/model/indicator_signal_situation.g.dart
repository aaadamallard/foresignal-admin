// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_signal_situation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndicatorSignalSituationStatusEnum
    _$indicatorSignalSituationStatusEnum_emerging =
    const IndicatorSignalSituationStatusEnum._('emerging');
const IndicatorSignalSituationStatusEnum
    _$indicatorSignalSituationStatusEnum_active =
    const IndicatorSignalSituationStatusEnum._('active');
const IndicatorSignalSituationStatusEnum
    _$indicatorSignalSituationStatusEnum_dormant =
    const IndicatorSignalSituationStatusEnum._('dormant');
const IndicatorSignalSituationStatusEnum
    _$indicatorSignalSituationStatusEnum_closed =
    const IndicatorSignalSituationStatusEnum._('closed');

IndicatorSignalSituationStatusEnum _$indicatorSignalSituationStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'emerging':
      return _$indicatorSignalSituationStatusEnum_emerging;
    case 'active':
      return _$indicatorSignalSituationStatusEnum_active;
    case 'dormant':
      return _$indicatorSignalSituationStatusEnum_dormant;
    case 'closed':
      return _$indicatorSignalSituationStatusEnum_closed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorSignalSituationStatusEnum>
    _$indicatorSignalSituationStatusEnumValues = BuiltSet<
        IndicatorSignalSituationStatusEnum>(const <IndicatorSignalSituationStatusEnum>[
  _$indicatorSignalSituationStatusEnum_emerging,
  _$indicatorSignalSituationStatusEnum_active,
  _$indicatorSignalSituationStatusEnum_dormant,
  _$indicatorSignalSituationStatusEnum_closed,
]);

Serializer<IndicatorSignalSituationStatusEnum>
    _$indicatorSignalSituationStatusEnumSerializer =
    _$IndicatorSignalSituationStatusEnumSerializer();

class _$IndicatorSignalSituationStatusEnumSerializer
    implements PrimitiveSerializer<IndicatorSignalSituationStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'emerging': 'emerging',
    'active': 'active',
    'dormant': 'dormant',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'emerging': 'emerging',
    'active': 'active',
    'dormant': 'dormant',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorSignalSituationStatusEnum];
  @override
  final String wireName = 'IndicatorSignalSituationStatusEnum';

  @override
  Object serialize(
          Serializers serializers, IndicatorSignalSituationStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndicatorSignalSituationStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndicatorSignalSituationStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IndicatorSignalSituation extends IndicatorSignalSituation {
  @override
  final String situationId;
  @override
  final IndicatorSignalSituationStatusEnum? status;
  @override
  final Severity? minSeverity;

  factory _$IndicatorSignalSituation(
          [void Function(IndicatorSignalSituationBuilder)? updates]) =>
      (IndicatorSignalSituationBuilder()..update(updates))._build();

  _$IndicatorSignalSituation._(
      {required this.situationId, this.status, this.minSeverity})
      : super._();
  @override
  IndicatorSignalSituation rebuild(
          void Function(IndicatorSignalSituationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndicatorSignalSituationBuilder toBuilder() =>
      IndicatorSignalSituationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndicatorSignalSituation &&
        situationId == other.situationId &&
        status == other.status &&
        minSeverity == other.minSeverity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndicatorSignalSituation')
          ..add('situationId', situationId)
          ..add('status', status)
          ..add('minSeverity', minSeverity))
        .toString();
  }
}

class IndicatorSignalSituationBuilder
    implements
        Builder<IndicatorSignalSituation, IndicatorSignalSituationBuilder> {
  _$IndicatorSignalSituation? _$v;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  IndicatorSignalSituationStatusEnum? _status;
  IndicatorSignalSituationStatusEnum? get status => _$this._status;
  set status(IndicatorSignalSituationStatusEnum? status) =>
      _$this._status = status;

  Severity? _minSeverity;
  Severity? get minSeverity => _$this._minSeverity;
  set minSeverity(Severity? minSeverity) => _$this._minSeverity = minSeverity;

  IndicatorSignalSituationBuilder() {
    IndicatorSignalSituation._defaults(this);
  }

  IndicatorSignalSituationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _situationId = $v.situationId;
      _status = $v.status;
      _minSeverity = $v.minSeverity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndicatorSignalSituation other) {
    _$v = other as _$IndicatorSignalSituation;
  }

  @override
  void update(void Function(IndicatorSignalSituationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndicatorSignalSituation build() => _build();

  _$IndicatorSignalSituation _build() {
    final _$result = _$v ??
        _$IndicatorSignalSituation._(
          situationId: BuiltValueNullFieldError.checkNotNull(
              situationId, r'IndicatorSignalSituation', 'situationId'),
          status: status,
          minSeverity: minSeverity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
