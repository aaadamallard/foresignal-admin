// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_tick.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TimelineTickKindEnum _$timelineTickKindEnum_observed =
    const TimelineTickKindEnum._('observed');
const TimelineTickKindEnum _$timelineTickKindEnum_forecast =
    const TimelineTickKindEnum._('forecast');
const TimelineTickKindEnum _$timelineTickKindEnum_unknownDefaultOpenApi =
    const TimelineTickKindEnum._('unknownDefaultOpenApi');

TimelineTickKindEnum _$timelineTickKindEnumValueOf(String name) {
  switch (name) {
    case 'observed':
      return _$timelineTickKindEnum_observed;
    case 'forecast':
      return _$timelineTickKindEnum_forecast;
    case 'unknownDefaultOpenApi':
      return _$timelineTickKindEnum_unknownDefaultOpenApi;
    default:
      return _$timelineTickKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<TimelineTickKindEnum> _$timelineTickKindEnumValues =
    BuiltSet<TimelineTickKindEnum>(const <TimelineTickKindEnum>[
      _$timelineTickKindEnum_observed,
      _$timelineTickKindEnum_forecast,
      _$timelineTickKindEnum_unknownDefaultOpenApi,
    ]);

Serializer<TimelineTickKindEnum> _$timelineTickKindEnumSerializer =
    _$TimelineTickKindEnumSerializer();

class _$TimelineTickKindEnumSerializer
    implements PrimitiveSerializer<TimelineTickKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'observed': 'observed',
    'forecast': 'forecast',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'observed': 'observed',
    'forecast': 'forecast',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TimelineTickKindEnum];
  @override
  final String wireName = 'TimelineTickKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    TimelineTickKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TimelineTickKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TimelineTickKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TimelineTick extends TimelineTick {
  @override
  final DateTime time;
  @override
  final TimelineTickKindEnum kind;
  @override
  final BuiltList<TimelineTickFramesInner> frames;

  factory _$TimelineTick([void Function(TimelineTickBuilder)? updates]) =>
      (TimelineTickBuilder()..update(updates))._build();

  _$TimelineTick._({
    required this.time,
    required this.kind,
    required this.frames,
  }) : super._();
  @override
  TimelineTick rebuild(void Function(TimelineTickBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimelineTickBuilder toBuilder() => TimelineTickBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimelineTick &&
        time == other.time &&
        kind == other.kind &&
        frames == other.frames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, frames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimelineTick')
          ..add('time', time)
          ..add('kind', kind)
          ..add('frames', frames))
        .toString();
  }
}

class TimelineTickBuilder
    implements Builder<TimelineTick, TimelineTickBuilder> {
  _$TimelineTick? _$v;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  TimelineTickKindEnum? _kind;
  TimelineTickKindEnum? get kind => _$this._kind;
  set kind(TimelineTickKindEnum? kind) => _$this._kind = kind;

  ListBuilder<TimelineTickFramesInner>? _frames;
  ListBuilder<TimelineTickFramesInner> get frames =>
      _$this._frames ??= ListBuilder<TimelineTickFramesInner>();
  set frames(ListBuilder<TimelineTickFramesInner>? frames) =>
      _$this._frames = frames;

  TimelineTickBuilder() {
    TimelineTick._defaults(this);
  }

  TimelineTickBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _kind = $v.kind;
      _frames = $v.frames.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimelineTick other) {
    _$v = other as _$TimelineTick;
  }

  @override
  void update(void Function(TimelineTickBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimelineTick build() => _build();

  _$TimelineTick _build() {
    _$TimelineTick _$result;
    try {
      _$result =
          _$v ??
          _$TimelineTick._(
            time: BuiltValueNullFieldError.checkNotNull(
              time,
              r'TimelineTick',
              'time',
            ),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'TimelineTick',
              'kind',
            ),
            frames: frames.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'frames';
        frames.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TimelineTick',
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
