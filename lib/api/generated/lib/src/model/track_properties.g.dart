// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_properties.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackProperties extends TrackProperties {
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final String? kind;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final BuiltList<BuiltList<int>> times;
  @override
  final BuiltMap<String, BuiltList<BuiltList<num?>>>? values;
  @override
  final bool? live;
  @override
  final int? pointsScanned;
  @override
  final int pointsReturned;
  @override
  final num? toleranceMeters;
  @override
  final int segments;
  @override
  final bool? approximate;
  @override
  final bool? downsampled;
  @override
  final bool? truncated;
  @override
  final int watermarkSeq;

  factory _$TrackProperties([void Function(TrackPropertiesBuilder)? updates]) =>
      (TrackPropertiesBuilder()..update(updates))._build();

  _$TrackProperties._({
    required this.sourceId,
    required this.externalId,
    this.kind,
    required this.from,
    required this.to,
    required this.times,
    this.values,
    this.live,
    this.pointsScanned,
    required this.pointsReturned,
    this.toleranceMeters,
    required this.segments,
    this.approximate,
    this.downsampled,
    this.truncated,
    required this.watermarkSeq,
  }) : super._();
  @override
  TrackProperties rebuild(void Function(TrackPropertiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackPropertiesBuilder toBuilder() => TrackPropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackProperties &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        kind == other.kind &&
        from == other.from &&
        to == other.to &&
        times == other.times &&
        values == other.values &&
        live == other.live &&
        pointsScanned == other.pointsScanned &&
        pointsReturned == other.pointsReturned &&
        toleranceMeters == other.toleranceMeters &&
        segments == other.segments &&
        approximate == other.approximate &&
        downsampled == other.downsampled &&
        truncated == other.truncated &&
        watermarkSeq == other.watermarkSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, times.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jc(_$hash, live.hashCode);
    _$hash = $jc(_$hash, pointsScanned.hashCode);
    _$hash = $jc(_$hash, pointsReturned.hashCode);
    _$hash = $jc(_$hash, toleranceMeters.hashCode);
    _$hash = $jc(_$hash, segments.hashCode);
    _$hash = $jc(_$hash, approximate.hashCode);
    _$hash = $jc(_$hash, downsampled.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackProperties')
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('from', from)
          ..add('to', to)
          ..add('times', times)
          ..add('values', values)
          ..add('live', live)
          ..add('pointsScanned', pointsScanned)
          ..add('pointsReturned', pointsReturned)
          ..add('toleranceMeters', toleranceMeters)
          ..add('segments', segments)
          ..add('approximate', approximate)
          ..add('downsampled', downsampled)
          ..add('truncated', truncated)
          ..add('watermarkSeq', watermarkSeq))
        .toString();
  }
}

class TrackPropertiesBuilder
    implements Builder<TrackProperties, TrackPropertiesBuilder> {
  _$TrackProperties? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  ListBuilder<BuiltList<int>>? _times;
  ListBuilder<BuiltList<int>> get times =>
      _$this._times ??= ListBuilder<BuiltList<int>>();
  set times(ListBuilder<BuiltList<int>>? times) => _$this._times = times;

  MapBuilder<String, BuiltList<BuiltList<num?>>>? _values;
  MapBuilder<String, BuiltList<BuiltList<num?>>> get values =>
      _$this._values ??= MapBuilder<String, BuiltList<BuiltList<num?>>>();
  set values(MapBuilder<String, BuiltList<BuiltList<num?>>>? values) =>
      _$this._values = values;

  bool? _live;
  bool? get live => _$this._live;
  set live(bool? live) => _$this._live = live;

  int? _pointsScanned;
  int? get pointsScanned => _$this._pointsScanned;
  set pointsScanned(int? pointsScanned) =>
      _$this._pointsScanned = pointsScanned;

  int? _pointsReturned;
  int? get pointsReturned => _$this._pointsReturned;
  set pointsReturned(int? pointsReturned) =>
      _$this._pointsReturned = pointsReturned;

  num? _toleranceMeters;
  num? get toleranceMeters => _$this._toleranceMeters;
  set toleranceMeters(num? toleranceMeters) =>
      _$this._toleranceMeters = toleranceMeters;

  int? _segments;
  int? get segments => _$this._segments;
  set segments(int? segments) => _$this._segments = segments;

  bool? _approximate;
  bool? get approximate => _$this._approximate;
  set approximate(bool? approximate) => _$this._approximate = approximate;

  bool? _downsampled;
  bool? get downsampled => _$this._downsampled;
  set downsampled(bool? downsampled) => _$this._downsampled = downsampled;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  TrackPropertiesBuilder() {
    TrackProperties._defaults(this);
  }

  TrackPropertiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _from = $v.from;
      _to = $v.to;
      _times = $v.times.toBuilder();
      _values = $v.values?.toBuilder();
      _live = $v.live;
      _pointsScanned = $v.pointsScanned;
      _pointsReturned = $v.pointsReturned;
      _toleranceMeters = $v.toleranceMeters;
      _segments = $v.segments;
      _approximate = $v.approximate;
      _downsampled = $v.downsampled;
      _truncated = $v.truncated;
      _watermarkSeq = $v.watermarkSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackProperties other) {
    _$v = other as _$TrackProperties;
  }

  @override
  void update(void Function(TrackPropertiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackProperties build() => _build();

  _$TrackProperties _build() {
    _$TrackProperties _$result;
    try {
      _$result =
          _$v ??
          _$TrackProperties._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId,
              r'TrackProperties',
              'sourceId',
            ),
            externalId: BuiltValueNullFieldError.checkNotNull(
              externalId,
              r'TrackProperties',
              'externalId',
            ),
            kind: kind,
            from: BuiltValueNullFieldError.checkNotNull(
              from,
              r'TrackProperties',
              'from',
            ),
            to: BuiltValueNullFieldError.checkNotNull(
              to,
              r'TrackProperties',
              'to',
            ),
            times: times.build(),
            values: _values?.build(),
            live: live,
            pointsScanned: pointsScanned,
            pointsReturned: BuiltValueNullFieldError.checkNotNull(
              pointsReturned,
              r'TrackProperties',
              'pointsReturned',
            ),
            toleranceMeters: toleranceMeters,
            segments: BuiltValueNullFieldError.checkNotNull(
              segments,
              r'TrackProperties',
              'segments',
            ),
            approximate: approximate,
            downsampled: downsampled,
            truncated: truncated,
            watermarkSeq: BuiltValueNullFieldError.checkNotNull(
              watermarkSeq,
              r'TrackProperties',
              'watermarkSeq',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'times';
        times.build();
        _$failedField = 'values';
        _values?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TrackProperties',
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
