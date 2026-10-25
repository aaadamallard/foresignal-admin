// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecursorEventEventEnum
_$precursorEventEventEnum_precursorPeriodValidated =
    const PrecursorEventEventEnum._('precursorPeriodValidated');
const PrecursorEventEventEnum _$precursorEventEventEnum_precursorPeriodStale =
    const PrecursorEventEventEnum._('precursorPeriodStale');
const PrecursorEventEventEnum _$precursorEventEventEnum_precursorPeriodRetired =
    const PrecursorEventEventEnum._('precursorPeriodRetired');
const PrecursorEventEventEnum _$precursorEventEventEnum_unknownDefaultOpenApi =
    const PrecursorEventEventEnum._('unknownDefaultOpenApi');

PrecursorEventEventEnum _$precursorEventEventEnumValueOf(String name) {
  switch (name) {
    case 'precursorPeriodValidated':
      return _$precursorEventEventEnum_precursorPeriodValidated;
    case 'precursorPeriodStale':
      return _$precursorEventEventEnum_precursorPeriodStale;
    case 'precursorPeriodRetired':
      return _$precursorEventEventEnum_precursorPeriodRetired;
    case 'unknownDefaultOpenApi':
      return _$precursorEventEventEnum_unknownDefaultOpenApi;
    default:
      return _$precursorEventEventEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorEventEventEnum> _$precursorEventEventEnumValues =
    BuiltSet<PrecursorEventEventEnum>(const <PrecursorEventEventEnum>[
      _$precursorEventEventEnum_precursorPeriodValidated,
      _$precursorEventEventEnum_precursorPeriodStale,
      _$precursorEventEventEnum_precursorPeriodRetired,
      _$precursorEventEventEnum_unknownDefaultOpenApi,
    ]);

Serializer<PrecursorEventEventEnum> _$precursorEventEventEnumSerializer =
    _$PrecursorEventEventEnumSerializer();

class _$PrecursorEventEventEnumSerializer
    implements PrimitiveSerializer<PrecursorEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'precursorPeriodValidated': 'precursor.validated',
    'precursorPeriodStale': 'precursor.stale',
    'precursorPeriodRetired': 'precursor.retired',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'precursor.validated': 'precursorPeriodValidated',
    'precursor.stale': 'precursorPeriodStale',
    'precursor.retired': 'precursorPeriodRetired',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorEventEventEnum];
  @override
  final String wireName = 'PrecursorEventEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorEventEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorEventEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorEventEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorEvent extends PrecursorEvent {
  @override
  final PrecursorEventEventEnum event;
  @override
  final PrecursorEventPrecursor precursor;
  @override
  final DateTime at;

  factory _$PrecursorEvent([void Function(PrecursorEventBuilder)? updates]) =>
      (PrecursorEventBuilder()..update(updates))._build();

  _$PrecursorEvent._({
    required this.event,
    required this.precursor,
    required this.at,
  }) : super._();
  @override
  PrecursorEvent rebuild(void Function(PrecursorEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorEventBuilder toBuilder() => PrecursorEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorEvent &&
        event == other.event &&
        precursor == other.precursor &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, precursor.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorEvent')
          ..add('event', event)
          ..add('precursor', precursor)
          ..add('at', at))
        .toString();
  }
}

class PrecursorEventBuilder
    implements Builder<PrecursorEvent, PrecursorEventBuilder> {
  _$PrecursorEvent? _$v;

  PrecursorEventEventEnum? _event;
  PrecursorEventEventEnum? get event => _$this._event;
  set event(PrecursorEventEventEnum? event) => _$this._event = event;

  PrecursorEventPrecursorBuilder? _precursor;
  PrecursorEventPrecursorBuilder get precursor =>
      _$this._precursor ??= PrecursorEventPrecursorBuilder();
  set precursor(PrecursorEventPrecursorBuilder? precursor) =>
      _$this._precursor = precursor;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  PrecursorEventBuilder() {
    PrecursorEvent._defaults(this);
  }

  PrecursorEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _precursor = $v.precursor.toBuilder();
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorEvent other) {
    _$v = other as _$PrecursorEvent;
  }

  @override
  void update(void Function(PrecursorEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorEvent build() => _build();

  _$PrecursorEvent _build() {
    _$PrecursorEvent _$result;
    try {
      _$result =
          _$v ??
          _$PrecursorEvent._(
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'PrecursorEvent',
              'event',
            ),
            precursor: precursor.build(),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'PrecursorEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'precursor';
        precursor.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PrecursorEvent',
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
