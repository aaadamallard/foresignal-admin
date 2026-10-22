// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raster_frame.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RasterFrameStatusEnum _$rasterFrameStatusEnum_partial =
    const RasterFrameStatusEnum._('partial');
const RasterFrameStatusEnum _$rasterFrameStatusEnum_complete =
    const RasterFrameStatusEnum._('complete');

RasterFrameStatusEnum _$rasterFrameStatusEnumValueOf(String name) {
  switch (name) {
    case 'partial':
      return _$rasterFrameStatusEnum_partial;
    case 'complete':
      return _$rasterFrameStatusEnum_complete;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RasterFrameStatusEnum> _$rasterFrameStatusEnumValues =
    BuiltSet<RasterFrameStatusEnum>(const <RasterFrameStatusEnum>[
      _$rasterFrameStatusEnum_partial,
      _$rasterFrameStatusEnum_complete,
    ]);

Serializer<RasterFrameStatusEnum> _$rasterFrameStatusEnumSerializer =
    _$RasterFrameStatusEnumSerializer();

class _$RasterFrameStatusEnumSerializer
    implements PrimitiveSerializer<RasterFrameStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'partial': 'partial',
    'complete': 'complete',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'partial': 'partial',
    'complete': 'complete',
  };

  @override
  final Iterable<Type> types = const <Type>[RasterFrameStatusEnum];
  @override
  final String wireName = 'RasterFrameStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RasterFrameStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RasterFrameStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RasterFrameStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RasterFrame extends RasterFrame {
  @override
  final String productId;
  @override
  final DateTime time;
  @override
  final String timeKey;
  @override
  final String frameKey;
  @override
  final RasterFrameStatusEnum status;
  @override
  final DateTime? expiresAt;
  @override
  final String? run;
  @override
  final int? step;
  @override
  final DateTime? obsStart;
  @override
  final DateTime? obsEnd;
  @override
  final String tiles;
  @override
  final String? tiles2x;
  @override
  final String? image;
  @override
  final BuiltList<num>? bounds;
  @override
  final FrameStats? stats;
  @override
  final bool? thinned;

  factory _$RasterFrame([void Function(RasterFrameBuilder)? updates]) =>
      (RasterFrameBuilder()..update(updates))._build();

  _$RasterFrame._({
    required this.productId,
    required this.time,
    required this.timeKey,
    required this.frameKey,
    required this.status,
    this.expiresAt,
    this.run,
    this.step,
    this.obsStart,
    this.obsEnd,
    required this.tiles,
    this.tiles2x,
    this.image,
    this.bounds,
    this.stats,
    this.thinned,
  }) : super._();
  @override
  RasterFrame rebuild(void Function(RasterFrameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RasterFrameBuilder toBuilder() => RasterFrameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RasterFrame &&
        productId == other.productId &&
        time == other.time &&
        timeKey == other.timeKey &&
        frameKey == other.frameKey &&
        status == other.status &&
        expiresAt == other.expiresAt &&
        run == other.run &&
        step == other.step &&
        obsStart == other.obsStart &&
        obsEnd == other.obsEnd &&
        tiles == other.tiles &&
        tiles2x == other.tiles2x &&
        image == other.image &&
        bounds == other.bounds &&
        stats == other.stats &&
        thinned == other.thinned;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, timeKey.hashCode);
    _$hash = $jc(_$hash, frameKey.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, obsStart.hashCode);
    _$hash = $jc(_$hash, obsEnd.hashCode);
    _$hash = $jc(_$hash, tiles.hashCode);
    _$hash = $jc(_$hash, tiles2x.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, bounds.hashCode);
    _$hash = $jc(_$hash, stats.hashCode);
    _$hash = $jc(_$hash, thinned.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RasterFrame')
          ..add('productId', productId)
          ..add('time', time)
          ..add('timeKey', timeKey)
          ..add('frameKey', frameKey)
          ..add('status', status)
          ..add('expiresAt', expiresAt)
          ..add('run', run)
          ..add('step', step)
          ..add('obsStart', obsStart)
          ..add('obsEnd', obsEnd)
          ..add('tiles', tiles)
          ..add('tiles2x', tiles2x)
          ..add('image', image)
          ..add('bounds', bounds)
          ..add('stats', stats)
          ..add('thinned', thinned))
        .toString();
  }
}

class RasterFrameBuilder implements Builder<RasterFrame, RasterFrameBuilder> {
  _$RasterFrame? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _timeKey;
  String? get timeKey => _$this._timeKey;
  set timeKey(String? timeKey) => _$this._timeKey = timeKey;

  String? _frameKey;
  String? get frameKey => _$this._frameKey;
  set frameKey(String? frameKey) => _$this._frameKey = frameKey;

  RasterFrameStatusEnum? _status;
  RasterFrameStatusEnum? get status => _$this._status;
  set status(RasterFrameStatusEnum? status) => _$this._status = status;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  int? _step;
  int? get step => _$this._step;
  set step(int? step) => _$this._step = step;

  DateTime? _obsStart;
  DateTime? get obsStart => _$this._obsStart;
  set obsStart(DateTime? obsStart) => _$this._obsStart = obsStart;

  DateTime? _obsEnd;
  DateTime? get obsEnd => _$this._obsEnd;
  set obsEnd(DateTime? obsEnd) => _$this._obsEnd = obsEnd;

  String? _tiles;
  String? get tiles => _$this._tiles;
  set tiles(String? tiles) => _$this._tiles = tiles;

  String? _tiles2x;
  String? get tiles2x => _$this._tiles2x;
  set tiles2x(String? tiles2x) => _$this._tiles2x = tiles2x;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ListBuilder<num>? _bounds;
  ListBuilder<num> get bounds => _$this._bounds ??= ListBuilder<num>();
  set bounds(ListBuilder<num>? bounds) => _$this._bounds = bounds;

  FrameStatsBuilder? _stats;
  FrameStatsBuilder get stats => _$this._stats ??= FrameStatsBuilder();
  set stats(FrameStatsBuilder? stats) => _$this._stats = stats;

  bool? _thinned;
  bool? get thinned => _$this._thinned;
  set thinned(bool? thinned) => _$this._thinned = thinned;

  RasterFrameBuilder() {
    RasterFrame._defaults(this);
  }

  RasterFrameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _time = $v.time;
      _timeKey = $v.timeKey;
      _frameKey = $v.frameKey;
      _status = $v.status;
      _expiresAt = $v.expiresAt;
      _run = $v.run;
      _step = $v.step;
      _obsStart = $v.obsStart;
      _obsEnd = $v.obsEnd;
      _tiles = $v.tiles;
      _tiles2x = $v.tiles2x;
      _image = $v.image;
      _bounds = $v.bounds?.toBuilder();
      _stats = $v.stats?.toBuilder();
      _thinned = $v.thinned;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RasterFrame other) {
    _$v = other as _$RasterFrame;
  }

  @override
  void update(void Function(RasterFrameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RasterFrame build() => _build();

  _$RasterFrame _build() {
    _$RasterFrame _$result;
    try {
      _$result =
          _$v ??
          _$RasterFrame._(
            productId: BuiltValueNullFieldError.checkNotNull(
              productId,
              r'RasterFrame',
              'productId',
            ),
            time: BuiltValueNullFieldError.checkNotNull(
              time,
              r'RasterFrame',
              'time',
            ),
            timeKey: BuiltValueNullFieldError.checkNotNull(
              timeKey,
              r'RasterFrame',
              'timeKey',
            ),
            frameKey: BuiltValueNullFieldError.checkNotNull(
              frameKey,
              r'RasterFrame',
              'frameKey',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'RasterFrame',
              'status',
            ),
            expiresAt: expiresAt,
            run: run,
            step: step,
            obsStart: obsStart,
            obsEnd: obsEnd,
            tiles: BuiltValueNullFieldError.checkNotNull(
              tiles,
              r'RasterFrame',
              'tiles',
            ),
            tiles2x: tiles2x,
            image: image,
            bounds: _bounds?.build(),
            stats: _stats?.build(),
            thinned: thinned,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bounds';
        _bounds?.build();
        _$failedField = 'stats';
        _stats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RasterFrame',
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
