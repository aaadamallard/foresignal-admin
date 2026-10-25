// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_reuse_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaReuseEventEventEnum _$mediaReuseEventEventEnum_mediaPeriodReuse =
    const MediaReuseEventEventEnum._('mediaPeriodReuse');
const MediaReuseEventEventEnum
_$mediaReuseEventEventEnum_unknownDefaultOpenApi =
    const MediaReuseEventEventEnum._('unknownDefaultOpenApi');

MediaReuseEventEventEnum _$mediaReuseEventEventEnumValueOf(String name) {
  switch (name) {
    case 'mediaPeriodReuse':
      return _$mediaReuseEventEventEnum_mediaPeriodReuse;
    case 'unknownDefaultOpenApi':
      return _$mediaReuseEventEventEnum_unknownDefaultOpenApi;
    default:
      return _$mediaReuseEventEventEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MediaReuseEventEventEnum> _$mediaReuseEventEventEnumValues =
    BuiltSet<MediaReuseEventEventEnum>(const <MediaReuseEventEventEnum>[
      _$mediaReuseEventEventEnum_mediaPeriodReuse,
      _$mediaReuseEventEventEnum_unknownDefaultOpenApi,
    ]);

const MediaReuseEventReasonEnum _$mediaReuseEventReasonEnum_earlier =
    const MediaReuseEventReasonEnum._('earlier');
const MediaReuseEventReasonEnum _$mediaReuseEventReasonEnum_elsewhere =
    const MediaReuseEventReasonEnum._('elsewhere');
const MediaReuseEventReasonEnum
_$mediaReuseEventReasonEnum_unknownDefaultOpenApi =
    const MediaReuseEventReasonEnum._('unknownDefaultOpenApi');

MediaReuseEventReasonEnum _$mediaReuseEventReasonEnumValueOf(String name) {
  switch (name) {
    case 'earlier':
      return _$mediaReuseEventReasonEnum_earlier;
    case 'elsewhere':
      return _$mediaReuseEventReasonEnum_elsewhere;
    case 'unknownDefaultOpenApi':
      return _$mediaReuseEventReasonEnum_unknownDefaultOpenApi;
    default:
      return _$mediaReuseEventReasonEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MediaReuseEventReasonEnum> _$mediaReuseEventReasonEnumValues =
    BuiltSet<MediaReuseEventReasonEnum>(const <MediaReuseEventReasonEnum>[
      _$mediaReuseEventReasonEnum_earlier,
      _$mediaReuseEventReasonEnum_elsewhere,
      _$mediaReuseEventReasonEnum_unknownDefaultOpenApi,
    ]);

Serializer<MediaReuseEventEventEnum> _$mediaReuseEventEventEnumSerializer =
    _$MediaReuseEventEventEnumSerializer();
Serializer<MediaReuseEventReasonEnum> _$mediaReuseEventReasonEnumSerializer =
    _$MediaReuseEventReasonEnumSerializer();

class _$MediaReuseEventEventEnumSerializer
    implements PrimitiveSerializer<MediaReuseEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mediaPeriodReuse': 'media.reuse',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'media.reuse': 'mediaPeriodReuse',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaReuseEventEventEnum];
  @override
  final String wireName = 'MediaReuseEventEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    MediaReuseEventEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MediaReuseEventEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MediaReuseEventEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MediaReuseEventReasonEnumSerializer
    implements PrimitiveSerializer<MediaReuseEventReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'earlier': 'earlier',
    'elsewhere': 'elsewhere',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'earlier': 'earlier',
    'elsewhere': 'elsewhere',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaReuseEventReasonEnum];
  @override
  final String wireName = 'MediaReuseEventReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    MediaReuseEventReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MediaReuseEventReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MediaReuseEventReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MediaReuseEvent extends MediaReuseEvent {
  @override
  final MediaReuseEventEventEnum event;
  @override
  final String findingId;
  @override
  final String fingerprintId;
  @override
  final String narrativeId;
  @override
  final String? earlierNarrativeId;
  @override
  final DateTime firstSeenAt;
  @override
  final MediaReuseEventReasonEnum reason;
  @override
  final DateTime at;

  factory _$MediaReuseEvent([void Function(MediaReuseEventBuilder)? updates]) =>
      (MediaReuseEventBuilder()..update(updates))._build();

  _$MediaReuseEvent._({
    required this.event,
    required this.findingId,
    required this.fingerprintId,
    required this.narrativeId,
    this.earlierNarrativeId,
    required this.firstSeenAt,
    required this.reason,
    required this.at,
  }) : super._();
  @override
  MediaReuseEvent rebuild(void Function(MediaReuseEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaReuseEventBuilder toBuilder() => MediaReuseEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaReuseEvent &&
        event == other.event &&
        findingId == other.findingId &&
        fingerprintId == other.fingerprintId &&
        narrativeId == other.narrativeId &&
        earlierNarrativeId == other.earlierNarrativeId &&
        firstSeenAt == other.firstSeenAt &&
        reason == other.reason &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, findingId.hashCode);
    _$hash = $jc(_$hash, fingerprintId.hashCode);
    _$hash = $jc(_$hash, narrativeId.hashCode);
    _$hash = $jc(_$hash, earlierNarrativeId.hashCode);
    _$hash = $jc(_$hash, firstSeenAt.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaReuseEvent')
          ..add('event', event)
          ..add('findingId', findingId)
          ..add('fingerprintId', fingerprintId)
          ..add('narrativeId', narrativeId)
          ..add('earlierNarrativeId', earlierNarrativeId)
          ..add('firstSeenAt', firstSeenAt)
          ..add('reason', reason)
          ..add('at', at))
        .toString();
  }
}

class MediaReuseEventBuilder
    implements Builder<MediaReuseEvent, MediaReuseEventBuilder> {
  _$MediaReuseEvent? _$v;

  MediaReuseEventEventEnum? _event;
  MediaReuseEventEventEnum? get event => _$this._event;
  set event(MediaReuseEventEventEnum? event) => _$this._event = event;

  String? _findingId;
  String? get findingId => _$this._findingId;
  set findingId(String? findingId) => _$this._findingId = findingId;

  String? _fingerprintId;
  String? get fingerprintId => _$this._fingerprintId;
  set fingerprintId(String? fingerprintId) =>
      _$this._fingerprintId = fingerprintId;

  String? _narrativeId;
  String? get narrativeId => _$this._narrativeId;
  set narrativeId(String? narrativeId) => _$this._narrativeId = narrativeId;

  String? _earlierNarrativeId;
  String? get earlierNarrativeId => _$this._earlierNarrativeId;
  set earlierNarrativeId(String? earlierNarrativeId) =>
      _$this._earlierNarrativeId = earlierNarrativeId;

  DateTime? _firstSeenAt;
  DateTime? get firstSeenAt => _$this._firstSeenAt;
  set firstSeenAt(DateTime? firstSeenAt) => _$this._firstSeenAt = firstSeenAt;

  MediaReuseEventReasonEnum? _reason;
  MediaReuseEventReasonEnum? get reason => _$this._reason;
  set reason(MediaReuseEventReasonEnum? reason) => _$this._reason = reason;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  MediaReuseEventBuilder() {
    MediaReuseEvent._defaults(this);
  }

  MediaReuseEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _findingId = $v.findingId;
      _fingerprintId = $v.fingerprintId;
      _narrativeId = $v.narrativeId;
      _earlierNarrativeId = $v.earlierNarrativeId;
      _firstSeenAt = $v.firstSeenAt;
      _reason = $v.reason;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaReuseEvent other) {
    _$v = other as _$MediaReuseEvent;
  }

  @override
  void update(void Function(MediaReuseEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaReuseEvent build() => _build();

  _$MediaReuseEvent _build() {
    final _$result =
        _$v ??
        _$MediaReuseEvent._(
          event: BuiltValueNullFieldError.checkNotNull(
            event,
            r'MediaReuseEvent',
            'event',
          ),
          findingId: BuiltValueNullFieldError.checkNotNull(
            findingId,
            r'MediaReuseEvent',
            'findingId',
          ),
          fingerprintId: BuiltValueNullFieldError.checkNotNull(
            fingerprintId,
            r'MediaReuseEvent',
            'fingerprintId',
          ),
          narrativeId: BuiltValueNullFieldError.checkNotNull(
            narrativeId,
            r'MediaReuseEvent',
            'narrativeId',
          ),
          earlierNarrativeId: earlierNarrativeId,
          firstSeenAt: BuiltValueNullFieldError.checkNotNull(
            firstSeenAt,
            r'MediaReuseEvent',
            'firstSeenAt',
          ),
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'MediaReuseEvent',
            'reason',
          ),
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'MediaReuseEvent',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
