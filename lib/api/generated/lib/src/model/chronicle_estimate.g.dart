// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_estimate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleEstimate extends ChronicleEstimate {
  @override
  final String chronicleId;
  @override
  final DateTime computedAt;
  @override
  final BuiltList<ChronicleEstimateLayersInner> layers;
  @override
  final num totalRowsPerDay;
  @override
  final num totalBytesPerDay;
  @override
  final int sizeCapBytes;
  @override
  final int? bytesUsed;
  @override
  final num? daysToCap;
  @override
  final BuiltList<Caveat>? caveats;

  factory _$ChronicleEstimate(
          [void Function(ChronicleEstimateBuilder)? updates]) =>
      (ChronicleEstimateBuilder()..update(updates))._build();

  _$ChronicleEstimate._(
      {required this.chronicleId,
      required this.computedAt,
      required this.layers,
      required this.totalRowsPerDay,
      required this.totalBytesPerDay,
      required this.sizeCapBytes,
      this.bytesUsed,
      this.daysToCap,
      this.caveats})
      : super._();
  @override
  ChronicleEstimate rebuild(void Function(ChronicleEstimateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleEstimateBuilder toBuilder() =>
      ChronicleEstimateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleEstimate &&
        chronicleId == other.chronicleId &&
        computedAt == other.computedAt &&
        layers == other.layers &&
        totalRowsPerDay == other.totalRowsPerDay &&
        totalBytesPerDay == other.totalBytesPerDay &&
        sizeCapBytes == other.sizeCapBytes &&
        bytesUsed == other.bytesUsed &&
        daysToCap == other.daysToCap &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jc(_$hash, totalRowsPerDay.hashCode);
    _$hash = $jc(_$hash, totalBytesPerDay.hashCode);
    _$hash = $jc(_$hash, sizeCapBytes.hashCode);
    _$hash = $jc(_$hash, bytesUsed.hashCode);
    _$hash = $jc(_$hash, daysToCap.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleEstimate')
          ..add('chronicleId', chronicleId)
          ..add('computedAt', computedAt)
          ..add('layers', layers)
          ..add('totalRowsPerDay', totalRowsPerDay)
          ..add('totalBytesPerDay', totalBytesPerDay)
          ..add('sizeCapBytes', sizeCapBytes)
          ..add('bytesUsed', bytesUsed)
          ..add('daysToCap', daysToCap)
          ..add('caveats', caveats))
        .toString();
  }
}

class ChronicleEstimateBuilder
    implements Builder<ChronicleEstimate, ChronicleEstimateBuilder> {
  _$ChronicleEstimate? _$v;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  ListBuilder<ChronicleEstimateLayersInner>? _layers;
  ListBuilder<ChronicleEstimateLayersInner> get layers =>
      _$this._layers ??= ListBuilder<ChronicleEstimateLayersInner>();
  set layers(ListBuilder<ChronicleEstimateLayersInner>? layers) =>
      _$this._layers = layers;

  num? _totalRowsPerDay;
  num? get totalRowsPerDay => _$this._totalRowsPerDay;
  set totalRowsPerDay(num? totalRowsPerDay) =>
      _$this._totalRowsPerDay = totalRowsPerDay;

  num? _totalBytesPerDay;
  num? get totalBytesPerDay => _$this._totalBytesPerDay;
  set totalBytesPerDay(num? totalBytesPerDay) =>
      _$this._totalBytesPerDay = totalBytesPerDay;

  int? _sizeCapBytes;
  int? get sizeCapBytes => _$this._sizeCapBytes;
  set sizeCapBytes(int? sizeCapBytes) => _$this._sizeCapBytes = sizeCapBytes;

  int? _bytesUsed;
  int? get bytesUsed => _$this._bytesUsed;
  set bytesUsed(int? bytesUsed) => _$this._bytesUsed = bytesUsed;

  num? _daysToCap;
  num? get daysToCap => _$this._daysToCap;
  set daysToCap(num? daysToCap) => _$this._daysToCap = daysToCap;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  ChronicleEstimateBuilder() {
    ChronicleEstimate._defaults(this);
  }

  ChronicleEstimateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chronicleId = $v.chronicleId;
      _computedAt = $v.computedAt;
      _layers = $v.layers.toBuilder();
      _totalRowsPerDay = $v.totalRowsPerDay;
      _totalBytesPerDay = $v.totalBytesPerDay;
      _sizeCapBytes = $v.sizeCapBytes;
      _bytesUsed = $v.bytesUsed;
      _daysToCap = $v.daysToCap;
      _caveats = $v.caveats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleEstimate other) {
    _$v = other as _$ChronicleEstimate;
  }

  @override
  void update(void Function(ChronicleEstimateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleEstimate build() => _build();

  _$ChronicleEstimate _build() {
    _$ChronicleEstimate _$result;
    try {
      _$result = _$v ??
          _$ChronicleEstimate._(
            chronicleId: BuiltValueNullFieldError.checkNotNull(
                chronicleId, r'ChronicleEstimate', 'chronicleId'),
            computedAt: BuiltValueNullFieldError.checkNotNull(
                computedAt, r'ChronicleEstimate', 'computedAt'),
            layers: layers.build(),
            totalRowsPerDay: BuiltValueNullFieldError.checkNotNull(
                totalRowsPerDay, r'ChronicleEstimate', 'totalRowsPerDay'),
            totalBytesPerDay: BuiltValueNullFieldError.checkNotNull(
                totalBytesPerDay, r'ChronicleEstimate', 'totalBytesPerDay'),
            sizeCapBytes: BuiltValueNullFieldError.checkNotNull(
                sizeCapBytes, r'ChronicleEstimate', 'sizeCapBytes'),
            bytesUsed: bytesUsed,
            daysToCap: daysToCap,
            caveats: _caveats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'layers';
        layers.build();

        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleEstimate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
