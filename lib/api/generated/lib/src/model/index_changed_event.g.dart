// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_changed_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndexChangedEventWeightsOriginEnum
_$indexChangedEventWeightsOriginEnum_default_ =
    const IndexChangedEventWeightsOriginEnum._('default_');
const IndexChangedEventWeightsOriginEnum
_$indexChangedEventWeightsOriginEnum_fitted =
    const IndexChangedEventWeightsOriginEnum._('fitted');
const IndexChangedEventWeightsOriginEnum
_$indexChangedEventWeightsOriginEnum_operator_ =
    const IndexChangedEventWeightsOriginEnum._('operator_');
const IndexChangedEventWeightsOriginEnum
_$indexChangedEventWeightsOriginEnum_unknownDefaultOpenApi =
    const IndexChangedEventWeightsOriginEnum._('unknownDefaultOpenApi');

IndexChangedEventWeightsOriginEnum _$indexChangedEventWeightsOriginEnumValueOf(
  String name,
) {
  switch (name) {
    case 'default_':
      return _$indexChangedEventWeightsOriginEnum_default_;
    case 'fitted':
      return _$indexChangedEventWeightsOriginEnum_fitted;
    case 'operator_':
      return _$indexChangedEventWeightsOriginEnum_operator_;
    case 'unknownDefaultOpenApi':
      return _$indexChangedEventWeightsOriginEnum_unknownDefaultOpenApi;
    default:
      return _$indexChangedEventWeightsOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IndexChangedEventWeightsOriginEnum>
_$indexChangedEventWeightsOriginEnumValues =
    BuiltSet<IndexChangedEventWeightsOriginEnum>(
      const <IndexChangedEventWeightsOriginEnum>[
        _$indexChangedEventWeightsOriginEnum_default_,
        _$indexChangedEventWeightsOriginEnum_fitted,
        _$indexChangedEventWeightsOriginEnum_operator_,
        _$indexChangedEventWeightsOriginEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<IndexChangedEventWeightsOriginEnum>
_$indexChangedEventWeightsOriginEnumSerializer =
    _$IndexChangedEventWeightsOriginEnumSerializer();

class _$IndexChangedEventWeightsOriginEnumSerializer
    implements PrimitiveSerializer<IndexChangedEventWeightsOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'fitted': 'fitted',
    'operator_': 'operator',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'fitted': 'fitted',
    'operator': 'operator_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IndexChangedEventWeightsOriginEnum];
  @override
  final String wireName = 'IndexChangedEventWeightsOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    IndexChangedEventWeightsOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IndexChangedEventWeightsOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IndexChangedEventWeightsOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IndexChangedEvent extends IndexChangedEvent {
  @override
  final String indexId;
  @override
  final String region;
  @override
  final Date day;
  @override
  final num value;
  @override
  final num? previousValue;
  @override
  final num? delta24h;
  @override
  final num? delta7d;
  @override
  final IndexChangedEventWeightsOriginEnum? weightsOrigin;

  factory _$IndexChangedEvent([
    void Function(IndexChangedEventBuilder)? updates,
  ]) => (IndexChangedEventBuilder()..update(updates))._build();

  _$IndexChangedEvent._({
    required this.indexId,
    required this.region,
    required this.day,
    required this.value,
    this.previousValue,
    this.delta24h,
    this.delta7d,
    this.weightsOrigin,
  }) : super._();
  @override
  IndexChangedEvent rebuild(void Function(IndexChangedEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndexChangedEventBuilder toBuilder() =>
      IndexChangedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndexChangedEvent &&
        indexId == other.indexId &&
        region == other.region &&
        day == other.day &&
        value == other.value &&
        previousValue == other.previousValue &&
        delta24h == other.delta24h &&
        delta7d == other.delta7d &&
        weightsOrigin == other.weightsOrigin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexId.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, previousValue.hashCode);
    _$hash = $jc(_$hash, delta24h.hashCode);
    _$hash = $jc(_$hash, delta7d.hashCode);
    _$hash = $jc(_$hash, weightsOrigin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndexChangedEvent')
          ..add('indexId', indexId)
          ..add('region', region)
          ..add('day', day)
          ..add('value', value)
          ..add('previousValue', previousValue)
          ..add('delta24h', delta24h)
          ..add('delta7d', delta7d)
          ..add('weightsOrigin', weightsOrigin))
        .toString();
  }
}

class IndexChangedEventBuilder
    implements Builder<IndexChangedEvent, IndexChangedEventBuilder> {
  _$IndexChangedEvent? _$v;

  String? _indexId;
  String? get indexId => _$this._indexId;
  set indexId(String? indexId) => _$this._indexId = indexId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  Date? _day;
  Date? get day => _$this._day;
  set day(Date? day) => _$this._day = day;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  num? _previousValue;
  num? get previousValue => _$this._previousValue;
  set previousValue(num? previousValue) =>
      _$this._previousValue = previousValue;

  num? _delta24h;
  num? get delta24h => _$this._delta24h;
  set delta24h(num? delta24h) => _$this._delta24h = delta24h;

  num? _delta7d;
  num? get delta7d => _$this._delta7d;
  set delta7d(num? delta7d) => _$this._delta7d = delta7d;

  IndexChangedEventWeightsOriginEnum? _weightsOrigin;
  IndexChangedEventWeightsOriginEnum? get weightsOrigin =>
      _$this._weightsOrigin;
  set weightsOrigin(IndexChangedEventWeightsOriginEnum? weightsOrigin) =>
      _$this._weightsOrigin = weightsOrigin;

  IndexChangedEventBuilder() {
    IndexChangedEvent._defaults(this);
  }

  IndexChangedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexId = $v.indexId;
      _region = $v.region;
      _day = $v.day;
      _value = $v.value;
      _previousValue = $v.previousValue;
      _delta24h = $v.delta24h;
      _delta7d = $v.delta7d;
      _weightsOrigin = $v.weightsOrigin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndexChangedEvent other) {
    _$v = other as _$IndexChangedEvent;
  }

  @override
  void update(void Function(IndexChangedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndexChangedEvent build() => _build();

  _$IndexChangedEvent _build() {
    final _$result =
        _$v ??
        _$IndexChangedEvent._(
          indexId: BuiltValueNullFieldError.checkNotNull(
            indexId,
            r'IndexChangedEvent',
            'indexId',
          ),
          region: BuiltValueNullFieldError.checkNotNull(
            region,
            r'IndexChangedEvent',
            'region',
          ),
          day: BuiltValueNullFieldError.checkNotNull(
            day,
            r'IndexChangedEvent',
            'day',
          ),
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'IndexChangedEvent',
            'value',
          ),
          previousValue: previousValue,
          delta24h: delta24h,
          delta7d: delta7d,
          weightsOrigin: weightsOrigin,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
