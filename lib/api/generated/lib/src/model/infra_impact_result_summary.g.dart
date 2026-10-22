// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_impact_result_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InfraImpactResultSummary extends InfraImpactResultSummary {
  @override
  final BuiltMap<String, BuiltMap<String, int>>? byType;
  @override
  final BuiltMap<String, int>? byLabel;

  factory _$InfraImpactResultSummary([
    void Function(InfraImpactResultSummaryBuilder)? updates,
  ]) => (InfraImpactResultSummaryBuilder()..update(updates))._build();

  _$InfraImpactResultSummary._({this.byType, this.byLabel}) : super._();
  @override
  InfraImpactResultSummary rebuild(
    void Function(InfraImpactResultSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InfraImpactResultSummaryBuilder toBuilder() =>
      InfraImpactResultSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraImpactResultSummary &&
        byType == other.byType &&
        byLabel == other.byLabel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byType.hashCode);
    _$hash = $jc(_$hash, byLabel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfraImpactResultSummary')
          ..add('byType', byType)
          ..add('byLabel', byLabel))
        .toString();
  }
}

class InfraImpactResultSummaryBuilder
    implements
        Builder<InfraImpactResultSummary, InfraImpactResultSummaryBuilder> {
  _$InfraImpactResultSummary? _$v;

  MapBuilder<String, BuiltMap<String, int>>? _byType;
  MapBuilder<String, BuiltMap<String, int>> get byType =>
      _$this._byType ??= MapBuilder<String, BuiltMap<String, int>>();
  set byType(MapBuilder<String, BuiltMap<String, int>>? byType) =>
      _$this._byType = byType;

  MapBuilder<String, int>? _byLabel;
  MapBuilder<String, int> get byLabel =>
      _$this._byLabel ??= MapBuilder<String, int>();
  set byLabel(MapBuilder<String, int>? byLabel) => _$this._byLabel = byLabel;

  InfraImpactResultSummaryBuilder() {
    InfraImpactResultSummary._defaults(this);
  }

  InfraImpactResultSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byType = $v.byType?.toBuilder();
      _byLabel = $v.byLabel?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraImpactResultSummary other) {
    _$v = other as _$InfraImpactResultSummary;
  }

  @override
  void update(void Function(InfraImpactResultSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraImpactResultSummary build() => _build();

  _$InfraImpactResultSummary _build() {
    _$InfraImpactResultSummary _$result;
    try {
      _$result =
          _$v ??
          _$InfraImpactResultSummary._(
            byType: _byType?.build(),
            byLabel: _byLabel?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byType';
        _byType?.build();
        _$failedField = 'byLabel';
        _byLabel?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InfraImpactResultSummary',
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
