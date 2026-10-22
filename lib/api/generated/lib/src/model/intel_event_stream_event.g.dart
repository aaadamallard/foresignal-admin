// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_event_stream_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntelEventStreamEventChangeEnum
    _$intelEventStreamEventChangeEnum_created =
    const IntelEventStreamEventChangeEnum._('created');
const IntelEventStreamEventChangeEnum
    _$intelEventStreamEventChangeEnum_updated =
    const IntelEventStreamEventChangeEnum._('updated');
const IntelEventStreamEventChangeEnum
    _$intelEventStreamEventChangeEnum_resolved =
    const IntelEventStreamEventChangeEnum._('resolved');
const IntelEventStreamEventChangeEnum _$intelEventStreamEventChangeEnum_merged =
    const IntelEventStreamEventChangeEnum._('merged');

IntelEventStreamEventChangeEnum _$intelEventStreamEventChangeEnumValueOf(
    String name) {
  switch (name) {
    case 'created':
      return _$intelEventStreamEventChangeEnum_created;
    case 'updated':
      return _$intelEventStreamEventChangeEnum_updated;
    case 'resolved':
      return _$intelEventStreamEventChangeEnum_resolved;
    case 'merged':
      return _$intelEventStreamEventChangeEnum_merged;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntelEventStreamEventChangeEnum>
    _$intelEventStreamEventChangeEnumValues = BuiltSet<
        IntelEventStreamEventChangeEnum>(const <IntelEventStreamEventChangeEnum>[
  _$intelEventStreamEventChangeEnum_created,
  _$intelEventStreamEventChangeEnum_updated,
  _$intelEventStreamEventChangeEnum_resolved,
  _$intelEventStreamEventChangeEnum_merged,
]);

Serializer<IntelEventStreamEventChangeEnum>
    _$intelEventStreamEventChangeEnumSerializer =
    _$IntelEventStreamEventChangeEnumSerializer();

class _$IntelEventStreamEventChangeEnumSerializer
    implements PrimitiveSerializer<IntelEventStreamEventChangeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'created': 'created',
    'updated': 'updated',
    'resolved': 'resolved',
    'merged': 'merged',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'created': 'created',
    'updated': 'updated',
    'resolved': 'resolved',
    'merged': 'merged',
  };

  @override
  final Iterable<Type> types = const <Type>[IntelEventStreamEventChangeEnum];
  @override
  final String wireName = 'IntelEventStreamEventChangeEnum';

  @override
  Object serialize(
          Serializers serializers, IntelEventStreamEventChangeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntelEventStreamEventChangeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntelEventStreamEventChangeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntelEventStreamEvent extends IntelEventStreamEvent {
  @override
  final String eventId;
  @override
  final IntelEventStreamEventChangeEnum change;
  @override
  final int version;
  @override
  final IntelEventSummary summary;
  @override
  final String? mergedInto;

  factory _$IntelEventStreamEvent(
          [void Function(IntelEventStreamEventBuilder)? updates]) =>
      (IntelEventStreamEventBuilder()..update(updates))._build();

  _$IntelEventStreamEvent._(
      {required this.eventId,
      required this.change,
      required this.version,
      required this.summary,
      this.mergedInto})
      : super._();
  @override
  IntelEventStreamEvent rebuild(
          void Function(IntelEventStreamEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelEventStreamEventBuilder toBuilder() =>
      IntelEventStreamEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelEventStreamEvent &&
        eventId == other.eventId &&
        change == other.change &&
        version == other.version &&
        summary == other.summary &&
        mergedInto == other.mergedInto;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, mergedInto.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelEventStreamEvent')
          ..add('eventId', eventId)
          ..add('change', change)
          ..add('version', version)
          ..add('summary', summary)
          ..add('mergedInto', mergedInto))
        .toString();
  }
}

class IntelEventStreamEventBuilder
    implements Builder<IntelEventStreamEvent, IntelEventStreamEventBuilder> {
  _$IntelEventStreamEvent? _$v;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  IntelEventStreamEventChangeEnum? _change;
  IntelEventStreamEventChangeEnum? get change => _$this._change;
  set change(IntelEventStreamEventChangeEnum? change) =>
      _$this._change = change;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  IntelEventSummaryBuilder? _summary;
  IntelEventSummaryBuilder get summary =>
      _$this._summary ??= IntelEventSummaryBuilder();
  set summary(IntelEventSummaryBuilder? summary) => _$this._summary = summary;

  String? _mergedInto;
  String? get mergedInto => _$this._mergedInto;
  set mergedInto(String? mergedInto) => _$this._mergedInto = mergedInto;

  IntelEventStreamEventBuilder() {
    IntelEventStreamEvent._defaults(this);
  }

  IntelEventStreamEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _change = $v.change;
      _version = $v.version;
      _summary = $v.summary.toBuilder();
      _mergedInto = $v.mergedInto;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelEventStreamEvent other) {
    _$v = other as _$IntelEventStreamEvent;
  }

  @override
  void update(void Function(IntelEventStreamEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelEventStreamEvent build() => _build();

  _$IntelEventStreamEvent _build() {
    _$IntelEventStreamEvent _$result;
    try {
      _$result = _$v ??
          _$IntelEventStreamEvent._(
            eventId: BuiltValueNullFieldError.checkNotNull(
                eventId, r'IntelEventStreamEvent', 'eventId'),
            change: BuiltValueNullFieldError.checkNotNull(
                change, r'IntelEventStreamEvent', 'change'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'IntelEventStreamEvent', 'version'),
            summary: summary.build(),
            mergedInto: mergedInto,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summary';
        summary.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IntelEventStreamEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
