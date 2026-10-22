// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_tick_frames_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TimelineTickFramesInnerAvailabilityEnum
_$timelineTickFramesInnerAvailabilityEnum_available =
    const TimelineTickFramesInnerAvailabilityEnum._('available');
const TimelineTickFramesInnerAvailabilityEnum
_$timelineTickFramesInnerAvailabilityEnum_unverified =
    const TimelineTickFramesInnerAvailabilityEnum._('unverified');

TimelineTickFramesInnerAvailabilityEnum
_$timelineTickFramesInnerAvailabilityEnumValueOf(String name) {
  switch (name) {
    case 'available':
      return _$timelineTickFramesInnerAvailabilityEnum_available;
    case 'unverified':
      return _$timelineTickFramesInnerAvailabilityEnum_unverified;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TimelineTickFramesInnerAvailabilityEnum>
_$timelineTickFramesInnerAvailabilityEnumValues =
    BuiltSet<TimelineTickFramesInnerAvailabilityEnum>(
      const <TimelineTickFramesInnerAvailabilityEnum>[
        _$timelineTickFramesInnerAvailabilityEnum_available,
        _$timelineTickFramesInnerAvailabilityEnum_unverified,
      ],
    );

Serializer<TimelineTickFramesInnerAvailabilityEnum>
_$timelineTickFramesInnerAvailabilityEnumSerializer =
    _$TimelineTickFramesInnerAvailabilityEnumSerializer();

class _$TimelineTickFramesInnerAvailabilityEnumSerializer
    implements PrimitiveSerializer<TimelineTickFramesInnerAvailabilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'available': 'available',
    'unverified': 'unverified',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'available': 'available',
    'unverified': 'unverified',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TimelineTickFramesInnerAvailabilityEnum,
  ];
  @override
  final String wireName = 'TimelineTickFramesInnerAvailabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    TimelineTickFramesInnerAvailabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TimelineTickFramesInnerAvailabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TimelineTickFramesInnerAvailabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TimelineTickFramesInner extends TimelineTickFramesInner {
  @override
  final String productId;
  @override
  final String? frameKey;
  @override
  final DateTime time;
  @override
  final String? run;
  @override
  final int? step;
  @override
  final String tiles;
  @override
  final TimelineTickFramesInnerAvailabilityEnum availability;

  factory _$TimelineTickFramesInner([
    void Function(TimelineTickFramesInnerBuilder)? updates,
  ]) => (TimelineTickFramesInnerBuilder()..update(updates))._build();

  _$TimelineTickFramesInner._({
    required this.productId,
    this.frameKey,
    required this.time,
    this.run,
    this.step,
    required this.tiles,
    required this.availability,
  }) : super._();
  @override
  TimelineTickFramesInner rebuild(
    void Function(TimelineTickFramesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimelineTickFramesInnerBuilder toBuilder() =>
      TimelineTickFramesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimelineTickFramesInner &&
        productId == other.productId &&
        frameKey == other.frameKey &&
        time == other.time &&
        run == other.run &&
        step == other.step &&
        tiles == other.tiles &&
        availability == other.availability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, frameKey.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, tiles.hashCode);
    _$hash = $jc(_$hash, availability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimelineTickFramesInner')
          ..add('productId', productId)
          ..add('frameKey', frameKey)
          ..add('time', time)
          ..add('run', run)
          ..add('step', step)
          ..add('tiles', tiles)
          ..add('availability', availability))
        .toString();
  }
}

class TimelineTickFramesInnerBuilder
    implements
        Builder<TimelineTickFramesInner, TimelineTickFramesInnerBuilder> {
  _$TimelineTickFramesInner? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _frameKey;
  String? get frameKey => _$this._frameKey;
  set frameKey(String? frameKey) => _$this._frameKey = frameKey;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  int? _step;
  int? get step => _$this._step;
  set step(int? step) => _$this._step = step;

  String? _tiles;
  String? get tiles => _$this._tiles;
  set tiles(String? tiles) => _$this._tiles = tiles;

  TimelineTickFramesInnerAvailabilityEnum? _availability;
  TimelineTickFramesInnerAvailabilityEnum? get availability =>
      _$this._availability;
  set availability(TimelineTickFramesInnerAvailabilityEnum? availability) =>
      _$this._availability = availability;

  TimelineTickFramesInnerBuilder() {
    TimelineTickFramesInner._defaults(this);
  }

  TimelineTickFramesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _frameKey = $v.frameKey;
      _time = $v.time;
      _run = $v.run;
      _step = $v.step;
      _tiles = $v.tiles;
      _availability = $v.availability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimelineTickFramesInner other) {
    _$v = other as _$TimelineTickFramesInner;
  }

  @override
  void update(void Function(TimelineTickFramesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimelineTickFramesInner build() => _build();

  _$TimelineTickFramesInner _build() {
    final _$result =
        _$v ??
        _$TimelineTickFramesInner._(
          productId: BuiltValueNullFieldError.checkNotNull(
            productId,
            r'TimelineTickFramesInner',
            'productId',
          ),
          frameKey: frameKey,
          time: BuiltValueNullFieldError.checkNotNull(
            time,
            r'TimelineTickFramesInner',
            'time',
          ),
          run: run,
          step: step,
          tiles: BuiltValueNullFieldError.checkNotNull(
            tiles,
            r'TimelineTickFramesInner',
            'tiles',
          ),
          availability: BuiltValueNullFieldError.checkNotNull(
            availability,
            r'TimelineTickFramesInner',
            'availability',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
