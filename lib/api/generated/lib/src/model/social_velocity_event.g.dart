// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_velocity_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialVelocityEventEventEnum
    _$socialVelocityEventEventEnum_socialPeriodVelocity =
    const SocialVelocityEventEventEnum._('socialPeriodVelocity');

SocialVelocityEventEventEnum _$socialVelocityEventEventEnumValueOf(
    String name) {
  switch (name) {
    case 'socialPeriodVelocity':
      return _$socialVelocityEventEventEnum_socialPeriodVelocity;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialVelocityEventEventEnum>
    _$socialVelocityEventEventEnumValues =
    BuiltSet<SocialVelocityEventEventEnum>(const <SocialVelocityEventEventEnum>[
  _$socialVelocityEventEventEnum_socialPeriodVelocity,
]);

Serializer<SocialVelocityEventEventEnum>
    _$socialVelocityEventEventEnumSerializer =
    _$SocialVelocityEventEventEnumSerializer();

class _$SocialVelocityEventEventEnumSerializer
    implements PrimitiveSerializer<SocialVelocityEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'socialPeriodVelocity': 'social.velocity',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'social.velocity': 'socialPeriodVelocity',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialVelocityEventEventEnum];
  @override
  final String wireName = 'SocialVelocityEventEventEnum';

  @override
  Object serialize(Serializers serializers, SocialVelocityEventEventEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SocialVelocityEventEventEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SocialVelocityEventEventEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SocialVelocityEvent extends SocialVelocityEvent {
  @override
  final SocialVelocityEventEventEnum event;
  @override
  final String findingId;
  @override
  final SocialVelocityEventScope scope;
  @override
  final String platform;
  @override
  final String? language;
  @override
  final num velocityRatio;
  @override
  final int uniqueAuthors;
  @override
  final num? zRobust;
  @override
  final FindingSeverity severity;
  @override
  final DateTime detectedAt;

  factory _$SocialVelocityEvent(
          [void Function(SocialVelocityEventBuilder)? updates]) =>
      (SocialVelocityEventBuilder()..update(updates))._build();

  _$SocialVelocityEvent._(
      {required this.event,
      required this.findingId,
      required this.scope,
      required this.platform,
      this.language,
      required this.velocityRatio,
      required this.uniqueAuthors,
      this.zRobust,
      required this.severity,
      required this.detectedAt})
      : super._();
  @override
  SocialVelocityEvent rebuild(
          void Function(SocialVelocityEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialVelocityEventBuilder toBuilder() =>
      SocialVelocityEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialVelocityEvent &&
        event == other.event &&
        findingId == other.findingId &&
        scope == other.scope &&
        platform == other.platform &&
        language == other.language &&
        velocityRatio == other.velocityRatio &&
        uniqueAuthors == other.uniqueAuthors &&
        zRobust == other.zRobust &&
        severity == other.severity &&
        detectedAt == other.detectedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, findingId.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, velocityRatio.hashCode);
    _$hash = $jc(_$hash, uniqueAuthors.hashCode);
    _$hash = $jc(_$hash, zRobust.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, detectedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialVelocityEvent')
          ..add('event', event)
          ..add('findingId', findingId)
          ..add('scope', scope)
          ..add('platform', platform)
          ..add('language', language)
          ..add('velocityRatio', velocityRatio)
          ..add('uniqueAuthors', uniqueAuthors)
          ..add('zRobust', zRobust)
          ..add('severity', severity)
          ..add('detectedAt', detectedAt))
        .toString();
  }
}

class SocialVelocityEventBuilder
    implements Builder<SocialVelocityEvent, SocialVelocityEventBuilder> {
  _$SocialVelocityEvent? _$v;

  SocialVelocityEventEventEnum? _event;
  SocialVelocityEventEventEnum? get event => _$this._event;
  set event(SocialVelocityEventEventEnum? event) => _$this._event = event;

  String? _findingId;
  String? get findingId => _$this._findingId;
  set findingId(String? findingId) => _$this._findingId = findingId;

  SocialVelocityEventScopeBuilder? _scope;
  SocialVelocityEventScopeBuilder get scope =>
      _$this._scope ??= SocialVelocityEventScopeBuilder();
  set scope(SocialVelocityEventScopeBuilder? scope) => _$this._scope = scope;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  num? _velocityRatio;
  num? get velocityRatio => _$this._velocityRatio;
  set velocityRatio(num? velocityRatio) =>
      _$this._velocityRatio = velocityRatio;

  int? _uniqueAuthors;
  int? get uniqueAuthors => _$this._uniqueAuthors;
  set uniqueAuthors(int? uniqueAuthors) =>
      _$this._uniqueAuthors = uniqueAuthors;

  num? _zRobust;
  num? get zRobust => _$this._zRobust;
  set zRobust(num? zRobust) => _$this._zRobust = zRobust;

  FindingSeverity? _severity;
  FindingSeverity? get severity => _$this._severity;
  set severity(FindingSeverity? severity) => _$this._severity = severity;

  DateTime? _detectedAt;
  DateTime? get detectedAt => _$this._detectedAt;
  set detectedAt(DateTime? detectedAt) => _$this._detectedAt = detectedAt;

  SocialVelocityEventBuilder() {
    SocialVelocityEvent._defaults(this);
  }

  SocialVelocityEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _findingId = $v.findingId;
      _scope = $v.scope.toBuilder();
      _platform = $v.platform;
      _language = $v.language;
      _velocityRatio = $v.velocityRatio;
      _uniqueAuthors = $v.uniqueAuthors;
      _zRobust = $v.zRobust;
      _severity = $v.severity;
      _detectedAt = $v.detectedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialVelocityEvent other) {
    _$v = other as _$SocialVelocityEvent;
  }

  @override
  void update(void Function(SocialVelocityEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialVelocityEvent build() => _build();

  _$SocialVelocityEvent _build() {
    _$SocialVelocityEvent _$result;
    try {
      _$result = _$v ??
          _$SocialVelocityEvent._(
            event: BuiltValueNullFieldError.checkNotNull(
                event, r'SocialVelocityEvent', 'event'),
            findingId: BuiltValueNullFieldError.checkNotNull(
                findingId, r'SocialVelocityEvent', 'findingId'),
            scope: scope.build(),
            platform: BuiltValueNullFieldError.checkNotNull(
                platform, r'SocialVelocityEvent', 'platform'),
            language: language,
            velocityRatio: BuiltValueNullFieldError.checkNotNull(
                velocityRatio, r'SocialVelocityEvent', 'velocityRatio'),
            uniqueAuthors: BuiltValueNullFieldError.checkNotNull(
                uniqueAuthors, r'SocialVelocityEvent', 'uniqueAuthors'),
            zRobust: zRobust,
            severity: BuiltValueNullFieldError.checkNotNull(
                severity, r'SocialVelocityEvent', 'severity'),
            detectedAt: BuiltValueNullFieldError.checkNotNull(
                detectedAt, r'SocialVelocityEvent', 'detectedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scope';
        scope.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialVelocityEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
