// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_series.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UsageSeriesResolutionEnum _$usageSeriesResolutionEnum_minute =
    const UsageSeriesResolutionEnum._('minute');
const UsageSeriesResolutionEnum _$usageSeriesResolutionEnum_hour =
    const UsageSeriesResolutionEnum._('hour');
const UsageSeriesResolutionEnum _$usageSeriesResolutionEnum_day =
    const UsageSeriesResolutionEnum._('day');

UsageSeriesResolutionEnum _$usageSeriesResolutionEnumValueOf(String name) {
  switch (name) {
    case 'minute':
      return _$usageSeriesResolutionEnum_minute;
    case 'hour':
      return _$usageSeriesResolutionEnum_hour;
    case 'day':
      return _$usageSeriesResolutionEnum_day;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UsageSeriesResolutionEnum> _$usageSeriesResolutionEnumValues =
    BuiltSet<UsageSeriesResolutionEnum>(const <UsageSeriesResolutionEnum>[
      _$usageSeriesResolutionEnum_minute,
      _$usageSeriesResolutionEnum_hour,
      _$usageSeriesResolutionEnum_day,
    ]);

Serializer<UsageSeriesResolutionEnum> _$usageSeriesResolutionEnumSerializer =
    _$UsageSeriesResolutionEnumSerializer();

class _$UsageSeriesResolutionEnumSerializer
    implements PrimitiveSerializer<UsageSeriesResolutionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'minute': 'minute',
    'hour': 'hour',
    'day': 'day',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'minute': 'minute',
    'hour': 'hour',
    'day': 'day',
  };

  @override
  final Iterable<Type> types = const <Type>[UsageSeriesResolutionEnum];
  @override
  final String wireName = 'UsageSeriesResolutionEnum';

  @override
  Object serialize(
    Serializers serializers,
    UsageSeriesResolutionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  UsageSeriesResolutionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => UsageSeriesResolutionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$UsageSeries extends UsageSeries {
  @override
  final String sourceId;
  @override
  final UsageSeriesResolutionEnum resolution;
  @override
  final BuiltList<UsagePoint> points;
  @override
  final UsagePoint? totals;

  factory _$UsageSeries([void Function(UsageSeriesBuilder)? updates]) =>
      (UsageSeriesBuilder()..update(updates))._build();

  _$UsageSeries._({
    required this.sourceId,
    required this.resolution,
    required this.points,
    this.totals,
  }) : super._();
  @override
  UsageSeries rebuild(void Function(UsageSeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsageSeriesBuilder toBuilder() => UsageSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsageSeries &&
        sourceId == other.sourceId &&
        resolution == other.resolution &&
        points == other.points &&
        totals == other.totals;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, resolution.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, totals.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsageSeries')
          ..add('sourceId', sourceId)
          ..add('resolution', resolution)
          ..add('points', points)
          ..add('totals', totals))
        .toString();
  }
}

class UsageSeriesBuilder implements Builder<UsageSeries, UsageSeriesBuilder> {
  _$UsageSeries? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  UsageSeriesResolutionEnum? _resolution;
  UsageSeriesResolutionEnum? get resolution => _$this._resolution;
  set resolution(UsageSeriesResolutionEnum? resolution) =>
      _$this._resolution = resolution;

  ListBuilder<UsagePoint>? _points;
  ListBuilder<UsagePoint> get points =>
      _$this._points ??= ListBuilder<UsagePoint>();
  set points(ListBuilder<UsagePoint>? points) => _$this._points = points;

  UsagePointBuilder? _totals;
  UsagePointBuilder get totals => _$this._totals ??= UsagePointBuilder();
  set totals(UsagePointBuilder? totals) => _$this._totals = totals;

  UsageSeriesBuilder() {
    UsageSeries._defaults(this);
  }

  UsageSeriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _resolution = $v.resolution;
      _points = $v.points.toBuilder();
      _totals = $v.totals?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsageSeries other) {
    _$v = other as _$UsageSeries;
  }

  @override
  void update(void Function(UsageSeriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsageSeries build() => _build();

  _$UsageSeries _build() {
    _$UsageSeries _$result;
    try {
      _$result =
          _$v ??
          _$UsageSeries._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId,
              r'UsageSeries',
              'sourceId',
            ),
            resolution: BuiltValueNullFieldError.checkNotNull(
              resolution,
              r'UsageSeries',
              'resolution',
            ),
            points: points.build(),
            totals: _totals?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        points.build();
        _$failedField = 'totals';
        _totals?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UsageSeries',
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
