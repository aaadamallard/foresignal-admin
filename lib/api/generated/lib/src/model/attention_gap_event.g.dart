// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attention_gap_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AttentionGapEventEventEnum
_$attentionGapEventEventEnum_attentionPeriodGap =
    const AttentionGapEventEventEnum._('attentionPeriodGap');

AttentionGapEventEventEnum _$attentionGapEventEventEnumValueOf(String name) {
  switch (name) {
    case 'attentionPeriodGap':
      return _$attentionGapEventEventEnum_attentionPeriodGap;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AttentionGapEventEventEnum> _$attentionGapEventEventEnumValues =
    BuiltSet<AttentionGapEventEventEnum>(const <AttentionGapEventEventEnum>[
      _$attentionGapEventEventEnum_attentionPeriodGap,
    ]);

Serializer<AttentionGapEventEventEnum> _$attentionGapEventEventEnumSerializer =
    _$AttentionGapEventEventEnumSerializer();

class _$AttentionGapEventEventEnumSerializer
    implements PrimitiveSerializer<AttentionGapEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'attentionPeriodGap': 'attention.gap',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'attention.gap': 'attentionPeriodGap',
  };

  @override
  final Iterable<Type> types = const <Type>[AttentionGapEventEventEnum];
  @override
  final String wireName = 'AttentionGapEventEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    AttentionGapEventEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AttentionGapEventEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AttentionGapEventEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AttentionGapEvent extends AttentionGapEvent {
  @override
  final AttentionGapEventEventEnum event;
  @override
  final String findingId;
  @override
  final String ref;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final num expected;
  @override
  final num observed;
  @override
  final BuiltList<String> platforms;
  @override
  final DateTime at;

  factory _$AttentionGapEvent([
    void Function(AttentionGapEventBuilder)? updates,
  ]) => (AttentionGapEventBuilder()..update(updates))._build();

  _$AttentionGapEvent._({
    required this.event,
    required this.findingId,
    required this.ref,
    this.regionCodes,
    required this.expected,
    required this.observed,
    required this.platforms,
    required this.at,
  }) : super._();
  @override
  AttentionGapEvent rebuild(void Function(AttentionGapEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttentionGapEventBuilder toBuilder() =>
      AttentionGapEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttentionGapEvent &&
        event == other.event &&
        findingId == other.findingId &&
        ref == other.ref &&
        regionCodes == other.regionCodes &&
        expected == other.expected &&
        observed == other.observed &&
        platforms == other.platforms &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, findingId.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, expected.hashCode);
    _$hash = $jc(_$hash, observed.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttentionGapEvent')
          ..add('event', event)
          ..add('findingId', findingId)
          ..add('ref', ref)
          ..add('regionCodes', regionCodes)
          ..add('expected', expected)
          ..add('observed', observed)
          ..add('platforms', platforms)
          ..add('at', at))
        .toString();
  }
}

class AttentionGapEventBuilder
    implements Builder<AttentionGapEvent, AttentionGapEventBuilder> {
  _$AttentionGapEvent? _$v;

  AttentionGapEventEventEnum? _event;
  AttentionGapEventEventEnum? get event => _$this._event;
  set event(AttentionGapEventEventEnum? event) => _$this._event = event;

  String? _findingId;
  String? get findingId => _$this._findingId;
  set findingId(String? findingId) => _$this._findingId = findingId;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  num? _expected;
  num? get expected => _$this._expected;
  set expected(num? expected) => _$this._expected = expected;

  num? _observed;
  num? get observed => _$this._observed;
  set observed(num? observed) => _$this._observed = observed;

  ListBuilder<String>? _platforms;
  ListBuilder<String> get platforms =>
      _$this._platforms ??= ListBuilder<String>();
  set platforms(ListBuilder<String>? platforms) =>
      _$this._platforms = platforms;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  AttentionGapEventBuilder() {
    AttentionGapEvent._defaults(this);
  }

  AttentionGapEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _findingId = $v.findingId;
      _ref = $v.ref;
      _regionCodes = $v.regionCodes?.toBuilder();
      _expected = $v.expected;
      _observed = $v.observed;
      _platforms = $v.platforms.toBuilder();
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttentionGapEvent other) {
    _$v = other as _$AttentionGapEvent;
  }

  @override
  void update(void Function(AttentionGapEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttentionGapEvent build() => _build();

  _$AttentionGapEvent _build() {
    _$AttentionGapEvent _$result;
    try {
      _$result =
          _$v ??
          _$AttentionGapEvent._(
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'AttentionGapEvent',
              'event',
            ),
            findingId: BuiltValueNullFieldError.checkNotNull(
              findingId,
              r'AttentionGapEvent',
              'findingId',
            ),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'AttentionGapEvent',
              'ref',
            ),
            regionCodes: _regionCodes?.build(),
            expected: BuiltValueNullFieldError.checkNotNull(
              expected,
              r'AttentionGapEvent',
              'expected',
            ),
            observed: BuiltValueNullFieldError.checkNotNull(
              observed,
              r'AttentionGapEvent',
              'observed',
            ),
            platforms: platforms.build(),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'AttentionGapEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        _regionCodes?.build();

        _$failedField = 'platforms';
        platforms.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AttentionGapEvent',
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
