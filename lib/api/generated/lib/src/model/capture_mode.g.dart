// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capture_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CaptureModeModeEnum _$captureModeModeEnum_full =
    const CaptureModeModeEnum._('full');
const CaptureModeModeEnum _$captureModeModeEnum_downsampled =
    const CaptureModeModeEnum._('downsampled');
const CaptureModeModeEnum _$captureModeModeEnum_eventsOnly =
    const CaptureModeModeEnum._('eventsOnly');
const CaptureModeModeEnum _$captureModeModeEnum_latestPerInterval =
    const CaptureModeModeEnum._('latestPerInterval');
const CaptureModeModeEnum _$captureModeModeEnum_rollupOnly =
    const CaptureModeModeEnum._('rollupOnly');
const CaptureModeModeEnum _$captureModeModeEnum_frames =
    const CaptureModeModeEnum._('frames');

CaptureModeModeEnum _$captureModeModeEnumValueOf(String name) {
  switch (name) {
    case 'full':
      return _$captureModeModeEnum_full;
    case 'downsampled':
      return _$captureModeModeEnum_downsampled;
    case 'eventsOnly':
      return _$captureModeModeEnum_eventsOnly;
    case 'latestPerInterval':
      return _$captureModeModeEnum_latestPerInterval;
    case 'rollupOnly':
      return _$captureModeModeEnum_rollupOnly;
    case 'frames':
      return _$captureModeModeEnum_frames;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CaptureModeModeEnum> _$captureModeModeEnumValues =
    BuiltSet<CaptureModeModeEnum>(const <CaptureModeModeEnum>[
  _$captureModeModeEnum_full,
  _$captureModeModeEnum_downsampled,
  _$captureModeModeEnum_eventsOnly,
  _$captureModeModeEnum_latestPerInterval,
  _$captureModeModeEnum_rollupOnly,
  _$captureModeModeEnum_frames,
]);

Serializer<CaptureModeModeEnum> _$captureModeModeEnumSerializer =
    _$CaptureModeModeEnumSerializer();

class _$CaptureModeModeEnumSerializer
    implements PrimitiveSerializer<CaptureModeModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'full': 'full',
    'downsampled': 'downsampled',
    'eventsOnly': 'events-only',
    'latestPerInterval': 'latest-per-interval',
    'rollupOnly': 'rollup-only',
    'frames': 'frames',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'full': 'full',
    'downsampled': 'downsampled',
    'events-only': 'eventsOnly',
    'latest-per-interval': 'latestPerInterval',
    'rollup-only': 'rollupOnly',
    'frames': 'frames',
  };

  @override
  final Iterable<Type> types = const <Type>[CaptureModeModeEnum];
  @override
  final String wireName = 'CaptureModeModeEnum';

  @override
  Object serialize(Serializers serializers, CaptureModeModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CaptureModeModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CaptureModeModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CaptureMode extends CaptureMode {
  @override
  final CaptureModeModeEnum mode;
  @override
  final String? interval;
  @override
  final int? everyNthFrame;

  factory _$CaptureMode([void Function(CaptureModeBuilder)? updates]) =>
      (CaptureModeBuilder()..update(updates))._build();

  _$CaptureMode._({required this.mode, this.interval, this.everyNthFrame})
      : super._();
  @override
  CaptureMode rebuild(void Function(CaptureModeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CaptureModeBuilder toBuilder() => CaptureModeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaptureMode &&
        mode == other.mode &&
        interval == other.interval &&
        everyNthFrame == other.everyNthFrame;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, everyNthFrame.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CaptureMode')
          ..add('mode', mode)
          ..add('interval', interval)
          ..add('everyNthFrame', everyNthFrame))
        .toString();
  }
}

class CaptureModeBuilder implements Builder<CaptureMode, CaptureModeBuilder> {
  _$CaptureMode? _$v;

  CaptureModeModeEnum? _mode;
  CaptureModeModeEnum? get mode => _$this._mode;
  set mode(CaptureModeModeEnum? mode) => _$this._mode = mode;

  String? _interval;
  String? get interval => _$this._interval;
  set interval(String? interval) => _$this._interval = interval;

  int? _everyNthFrame;
  int? get everyNthFrame => _$this._everyNthFrame;
  set everyNthFrame(int? everyNthFrame) =>
      _$this._everyNthFrame = everyNthFrame;

  CaptureModeBuilder() {
    CaptureMode._defaults(this);
  }

  CaptureModeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _interval = $v.interval;
      _everyNthFrame = $v.everyNthFrame;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaptureMode other) {
    _$v = other as _$CaptureMode;
  }

  @override
  void update(void Function(CaptureModeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CaptureMode build() => _build();

  _$CaptureMode _build() {
    final _$result = _$v ??
        _$CaptureMode._(
          mode: BuiltValueNullFieldError.checkNotNull(
              mode, r'CaptureMode', 'mode'),
          interval: interval,
          everyNthFrame: everyNthFrame,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
