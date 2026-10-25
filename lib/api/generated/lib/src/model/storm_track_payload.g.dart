// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storm_track_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StormTrackPayloadStatusEnum _$stormTrackPayloadStatusEnum_active =
    const StormTrackPayloadStatusEnum._('active');
const StormTrackPayloadStatusEnum _$stormTrackPayloadStatusEnum_ended =
    const StormTrackPayloadStatusEnum._('ended');
const StormTrackPayloadStatusEnum
_$stormTrackPayloadStatusEnum_unknownDefaultOpenApi =
    const StormTrackPayloadStatusEnum._('unknownDefaultOpenApi');

StormTrackPayloadStatusEnum _$stormTrackPayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$stormTrackPayloadStatusEnum_active;
    case 'ended':
      return _$stormTrackPayloadStatusEnum_ended;
    case 'unknownDefaultOpenApi':
      return _$stormTrackPayloadStatusEnum_unknownDefaultOpenApi;
    default:
      return _$stormTrackPayloadStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<StormTrackPayloadStatusEnum>
_$stormTrackPayloadStatusEnumValues =
    BuiltSet<StormTrackPayloadStatusEnum>(const <StormTrackPayloadStatusEnum>[
      _$stormTrackPayloadStatusEnum_active,
      _$stormTrackPayloadStatusEnum_ended,
      _$stormTrackPayloadStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<StormTrackPayloadStatusEnum>
_$stormTrackPayloadStatusEnumSerializer =
    _$StormTrackPayloadStatusEnumSerializer();

class _$StormTrackPayloadStatusEnumSerializer
    implements PrimitiveSerializer<StormTrackPayloadStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'ended': 'ended',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'ended': 'ended',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[StormTrackPayloadStatusEnum];
  @override
  final String wireName = 'StormTrackPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StormTrackPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StormTrackPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StormTrackPayload extends StormTrackPayload {
  @override
  final StormTrackPayloadCell cell;
  @override
  final BuiltList<StormTrackPayloadHistoryInner>? history;
  @override
  final StormTrackPayloadMotion motion;
  @override
  final StormTrackPayloadTrend? trend;
  @override
  final StormTrackPayloadLightningJump? lightningJump;
  @override
  final BuiltList<StormTrackPayloadNowcastInner>? nowcast;
  @override
  final StormTrackPayloadStatusEnum status;
  @override
  final String? mergedInto;
  @override
  final String? parentTrackId;
  @override
  final DetectorRef? detector;

  factory _$StormTrackPayload([
    void Function(StormTrackPayloadBuilder)? updates,
  ]) => (StormTrackPayloadBuilder()..update(updates))._build();

  _$StormTrackPayload._({
    required this.cell,
    this.history,
    required this.motion,
    this.trend,
    this.lightningJump,
    this.nowcast,
    required this.status,
    this.mergedInto,
    this.parentTrackId,
    this.detector,
  }) : super._();
  @override
  StormTrackPayload rebuild(void Function(StormTrackPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StormTrackPayloadBuilder toBuilder() =>
      StormTrackPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StormTrackPayload &&
        cell == other.cell &&
        history == other.history &&
        motion == other.motion &&
        trend == other.trend &&
        lightningJump == other.lightningJump &&
        nowcast == other.nowcast &&
        status == other.status &&
        mergedInto == other.mergedInto &&
        parentTrackId == other.parentTrackId &&
        detector == other.detector;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cell.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jc(_$hash, motion.hashCode);
    _$hash = $jc(_$hash, trend.hashCode);
    _$hash = $jc(_$hash, lightningJump.hashCode);
    _$hash = $jc(_$hash, nowcast.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, mergedInto.hashCode);
    _$hash = $jc(_$hash, parentTrackId.hashCode);
    _$hash = $jc(_$hash, detector.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StormTrackPayload')
          ..add('cell', cell)
          ..add('history', history)
          ..add('motion', motion)
          ..add('trend', trend)
          ..add('lightningJump', lightningJump)
          ..add('nowcast', nowcast)
          ..add('status', status)
          ..add('mergedInto', mergedInto)
          ..add('parentTrackId', parentTrackId)
          ..add('detector', detector))
        .toString();
  }
}

class StormTrackPayloadBuilder
    implements Builder<StormTrackPayload, StormTrackPayloadBuilder> {
  _$StormTrackPayload? _$v;

  StormTrackPayloadCellBuilder? _cell;
  StormTrackPayloadCellBuilder get cell =>
      _$this._cell ??= StormTrackPayloadCellBuilder();
  set cell(StormTrackPayloadCellBuilder? cell) => _$this._cell = cell;

  ListBuilder<StormTrackPayloadHistoryInner>? _history;
  ListBuilder<StormTrackPayloadHistoryInner> get history =>
      _$this._history ??= ListBuilder<StormTrackPayloadHistoryInner>();
  set history(ListBuilder<StormTrackPayloadHistoryInner>? history) =>
      _$this._history = history;

  StormTrackPayloadMotionBuilder? _motion;
  StormTrackPayloadMotionBuilder get motion =>
      _$this._motion ??= StormTrackPayloadMotionBuilder();
  set motion(StormTrackPayloadMotionBuilder? motion) => _$this._motion = motion;

  StormTrackPayloadTrendBuilder? _trend;
  StormTrackPayloadTrendBuilder get trend =>
      _$this._trend ??= StormTrackPayloadTrendBuilder();
  set trend(StormTrackPayloadTrendBuilder? trend) => _$this._trend = trend;

  StormTrackPayloadLightningJumpBuilder? _lightningJump;
  StormTrackPayloadLightningJumpBuilder get lightningJump =>
      _$this._lightningJump ??= StormTrackPayloadLightningJumpBuilder();
  set lightningJump(StormTrackPayloadLightningJumpBuilder? lightningJump) =>
      _$this._lightningJump = lightningJump;

  ListBuilder<StormTrackPayloadNowcastInner>? _nowcast;
  ListBuilder<StormTrackPayloadNowcastInner> get nowcast =>
      _$this._nowcast ??= ListBuilder<StormTrackPayloadNowcastInner>();
  set nowcast(ListBuilder<StormTrackPayloadNowcastInner>? nowcast) =>
      _$this._nowcast = nowcast;

  StormTrackPayloadStatusEnum? _status;
  StormTrackPayloadStatusEnum? get status => _$this._status;
  set status(StormTrackPayloadStatusEnum? status) => _$this._status = status;

  String? _mergedInto;
  String? get mergedInto => _$this._mergedInto;
  set mergedInto(String? mergedInto) => _$this._mergedInto = mergedInto;

  String? _parentTrackId;
  String? get parentTrackId => _$this._parentTrackId;
  set parentTrackId(String? parentTrackId) =>
      _$this._parentTrackId = parentTrackId;

  DetectorRefBuilder? _detector;
  DetectorRefBuilder get detector => _$this._detector ??= DetectorRefBuilder();
  set detector(DetectorRefBuilder? detector) => _$this._detector = detector;

  StormTrackPayloadBuilder() {
    StormTrackPayload._defaults(this);
  }

  StormTrackPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cell = $v.cell.toBuilder();
      _history = $v.history?.toBuilder();
      _motion = $v.motion.toBuilder();
      _trend = $v.trend?.toBuilder();
      _lightningJump = $v.lightningJump?.toBuilder();
      _nowcast = $v.nowcast?.toBuilder();
      _status = $v.status;
      _mergedInto = $v.mergedInto;
      _parentTrackId = $v.parentTrackId;
      _detector = $v.detector?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StormTrackPayload other) {
    _$v = other as _$StormTrackPayload;
  }

  @override
  void update(void Function(StormTrackPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StormTrackPayload build() => _build();

  _$StormTrackPayload _build() {
    _$StormTrackPayload _$result;
    try {
      _$result =
          _$v ??
          _$StormTrackPayload._(
            cell: cell.build(),
            history: _history?.build(),
            motion: motion.build(),
            trend: _trend?.build(),
            lightningJump: _lightningJump?.build(),
            nowcast: _nowcast?.build(),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'StormTrackPayload',
              'status',
            ),
            mergedInto: mergedInto,
            parentTrackId: parentTrackId,
            detector: _detector?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cell';
        cell.build();
        _$failedField = 'history';
        _history?.build();
        _$failedField = 'motion';
        motion.build();
        _$failedField = 'trend';
        _trend?.build();
        _$failedField = 'lightningJump';
        _lightningJump?.build();
        _$failedField = 'nowcast';
        _nowcast?.build();

        _$failedField = 'detector';
        _detector?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StormTrackPayload',
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
