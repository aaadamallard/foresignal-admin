// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_packet_coverage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CyclePacketCoverage extends CyclePacketCoverage {
  @override
  final BuiltList<String>? failingSources;
  @override
  final BuiltList<String>? degradedSources;
  @override
  final BuiltList<String>? lowReportingDensityRegions;

  factory _$CyclePacketCoverage([
    void Function(CyclePacketCoverageBuilder)? updates,
  ]) => (CyclePacketCoverageBuilder()..update(updates))._build();

  _$CyclePacketCoverage._({
    this.failingSources,
    this.degradedSources,
    this.lowReportingDensityRegions,
  }) : super._();
  @override
  CyclePacketCoverage rebuild(
    void Function(CyclePacketCoverageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CyclePacketCoverageBuilder toBuilder() =>
      CyclePacketCoverageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CyclePacketCoverage &&
        failingSources == other.failingSources &&
        degradedSources == other.degradedSources &&
        lowReportingDensityRegions == other.lowReportingDensityRegions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failingSources.hashCode);
    _$hash = $jc(_$hash, degradedSources.hashCode);
    _$hash = $jc(_$hash, lowReportingDensityRegions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CyclePacketCoverage')
          ..add('failingSources', failingSources)
          ..add('degradedSources', degradedSources)
          ..add('lowReportingDensityRegions', lowReportingDensityRegions))
        .toString();
  }
}

class CyclePacketCoverageBuilder
    implements Builder<CyclePacketCoverage, CyclePacketCoverageBuilder> {
  _$CyclePacketCoverage? _$v;

  ListBuilder<String>? _failingSources;
  ListBuilder<String> get failingSources =>
      _$this._failingSources ??= ListBuilder<String>();
  set failingSources(ListBuilder<String>? failingSources) =>
      _$this._failingSources = failingSources;

  ListBuilder<String>? _degradedSources;
  ListBuilder<String> get degradedSources =>
      _$this._degradedSources ??= ListBuilder<String>();
  set degradedSources(ListBuilder<String>? degradedSources) =>
      _$this._degradedSources = degradedSources;

  ListBuilder<String>? _lowReportingDensityRegions;
  ListBuilder<String> get lowReportingDensityRegions =>
      _$this._lowReportingDensityRegions ??= ListBuilder<String>();
  set lowReportingDensityRegions(
    ListBuilder<String>? lowReportingDensityRegions,
  ) => _$this._lowReportingDensityRegions = lowReportingDensityRegions;

  CyclePacketCoverageBuilder() {
    CyclePacketCoverage._defaults(this);
  }

  CyclePacketCoverageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failingSources = $v.failingSources?.toBuilder();
      _degradedSources = $v.degradedSources?.toBuilder();
      _lowReportingDensityRegions = $v.lowReportingDensityRegions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CyclePacketCoverage other) {
    _$v = other as _$CyclePacketCoverage;
  }

  @override
  void update(void Function(CyclePacketCoverageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CyclePacketCoverage build() => _build();

  _$CyclePacketCoverage _build() {
    _$CyclePacketCoverage _$result;
    try {
      _$result =
          _$v ??
          _$CyclePacketCoverage._(
            failingSources: _failingSources?.build(),
            degradedSources: _degradedSources?.build(),
            lowReportingDensityRegions: _lowReportingDensityRegions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failingSources';
        _failingSources?.build();
        _$failedField = 'degradedSources';
        _degradedSources?.build();
        _$failedField = 'lowReportingDensityRegions';
        _lowReportingDensityRegions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CyclePacketCoverage',
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
