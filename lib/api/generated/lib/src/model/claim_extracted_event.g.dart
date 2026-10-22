// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_extracted_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClaimExtractedEventEventEnum
    _$claimExtractedEventEventEnum_claimPeriodExtracted =
    const ClaimExtractedEventEventEnum._('claimPeriodExtracted');

ClaimExtractedEventEventEnum _$claimExtractedEventEventEnumValueOf(
    String name) {
  switch (name) {
    case 'claimPeriodExtracted':
      return _$claimExtractedEventEventEnum_claimPeriodExtracted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimExtractedEventEventEnum>
    _$claimExtractedEventEventEnumValues =
    BuiltSet<ClaimExtractedEventEventEnum>(const <ClaimExtractedEventEventEnum>[
  _$claimExtractedEventEventEnum_claimPeriodExtracted,
]);

Serializer<ClaimExtractedEventEventEnum>
    _$claimExtractedEventEventEnumSerializer =
    _$ClaimExtractedEventEventEnumSerializer();

class _$ClaimExtractedEventEventEnumSerializer
    implements PrimitiveSerializer<ClaimExtractedEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'claimPeriodExtracted': 'claim.extracted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'claim.extracted': 'claimPeriodExtracted',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimExtractedEventEventEnum];
  @override
  final String wireName = 'ClaimExtractedEventEventEnum';

  @override
  Object serialize(Serializers serializers, ClaimExtractedEventEventEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimExtractedEventEventEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimExtractedEventEventEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClaimExtractedEvent extends ClaimExtractedEvent {
  @override
  final ClaimExtractedEventEventEnum event;
  @override
  final Claim claim;
  @override
  final DateTime at;

  factory _$ClaimExtractedEvent(
          [void Function(ClaimExtractedEventBuilder)? updates]) =>
      (ClaimExtractedEventBuilder()..update(updates))._build();

  _$ClaimExtractedEvent._(
      {required this.event, required this.claim, required this.at})
      : super._();
  @override
  ClaimExtractedEvent rebuild(
          void Function(ClaimExtractedEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimExtractedEventBuilder toBuilder() =>
      ClaimExtractedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimExtractedEvent &&
        event == other.event &&
        claim == other.claim &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, claim.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimExtractedEvent')
          ..add('event', event)
          ..add('claim', claim)
          ..add('at', at))
        .toString();
  }
}

class ClaimExtractedEventBuilder
    implements Builder<ClaimExtractedEvent, ClaimExtractedEventBuilder> {
  _$ClaimExtractedEvent? _$v;

  ClaimExtractedEventEventEnum? _event;
  ClaimExtractedEventEventEnum? get event => _$this._event;
  set event(ClaimExtractedEventEventEnum? event) => _$this._event = event;

  ClaimBuilder? _claim;
  ClaimBuilder get claim => _$this._claim ??= ClaimBuilder();
  set claim(ClaimBuilder? claim) => _$this._claim = claim;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ClaimExtractedEventBuilder() {
    ClaimExtractedEvent._defaults(this);
  }

  ClaimExtractedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _claim = $v.claim.toBuilder();
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimExtractedEvent other) {
    _$v = other as _$ClaimExtractedEvent;
  }

  @override
  void update(void Function(ClaimExtractedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimExtractedEvent build() => _build();

  _$ClaimExtractedEvent _build() {
    _$ClaimExtractedEvent _$result;
    try {
      _$result = _$v ??
          _$ClaimExtractedEvent._(
            event: BuiltValueNullFieldError.checkNotNull(
                event, r'ClaimExtractedEvent', 'event'),
            claim: claim.build(),
            at: BuiltValueNullFieldError.checkNotNull(
                at, r'ClaimExtractedEvent', 'at'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'claim';
        claim.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ClaimExtractedEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
