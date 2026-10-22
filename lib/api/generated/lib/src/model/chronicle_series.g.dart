// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_series.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSeries extends ChronicleSeries {
  @override
  final String chronicleId;
  @override
  final String ref;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final BuiltList<SeriesPoint> points;
  @override
  final bool? backfilled;

  factory _$ChronicleSeries([void Function(ChronicleSeriesBuilder)? updates]) =>
      (ChronicleSeriesBuilder()..update(updates))._build();

  _$ChronicleSeries._({
    required this.chronicleId,
    required this.ref,
    this.from,
    this.to,
    required this.points,
    this.backfilled,
  }) : super._();
  @override
  ChronicleSeries rebuild(void Function(ChronicleSeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleSeriesBuilder toBuilder() => ChronicleSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSeries &&
        chronicleId == other.chronicleId &&
        ref == other.ref &&
        from == other.from &&
        to == other.to &&
        points == other.points &&
        backfilled == other.backfilled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, backfilled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSeries')
          ..add('chronicleId', chronicleId)
          ..add('ref', ref)
          ..add('from', from)
          ..add('to', to)
          ..add('points', points)
          ..add('backfilled', backfilled))
        .toString();
  }
}

class ChronicleSeriesBuilder
    implements Builder<ChronicleSeries, ChronicleSeriesBuilder> {
  _$ChronicleSeries? _$v;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  ListBuilder<SeriesPoint>? _points;
  ListBuilder<SeriesPoint> get points =>
      _$this._points ??= ListBuilder<SeriesPoint>();
  set points(ListBuilder<SeriesPoint>? points) => _$this._points = points;

  bool? _backfilled;
  bool? get backfilled => _$this._backfilled;
  set backfilled(bool? backfilled) => _$this._backfilled = backfilled;

  ChronicleSeriesBuilder() {
    ChronicleSeries._defaults(this);
  }

  ChronicleSeriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chronicleId = $v.chronicleId;
      _ref = $v.ref;
      _from = $v.from;
      _to = $v.to;
      _points = $v.points.toBuilder();
      _backfilled = $v.backfilled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSeries other) {
    _$v = other as _$ChronicleSeries;
  }

  @override
  void update(void Function(ChronicleSeriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSeries build() => _build();

  _$ChronicleSeries _build() {
    _$ChronicleSeries _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleSeries._(
            chronicleId: BuiltValueNullFieldError.checkNotNull(
              chronicleId,
              r'ChronicleSeries',
              'chronicleId',
            ),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'ChronicleSeries',
              'ref',
            ),
            from: from,
            to: to,
            points: points.build(),
            backfilled: backfilled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        points.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleSeries',
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
