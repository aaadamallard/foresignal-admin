// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_impact_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InfraImpactResult extends InfraImpactResult {
  @override
  final String buildId;
  @override
  final bool? approximateArea;
  @override
  final BuiltList<InfraNode> direct;
  @override
  final BuiltList<InfraImpactResultDependentsInner> dependents;
  @override
  final InfraImpactResultSummary summary;
  @override
  final BuiltList<Caveat> caveats;
  @override
  final BuiltList<String> attribution;
  @override
  final bool truncated;

  factory _$InfraImpactResult([
    void Function(InfraImpactResultBuilder)? updates,
  ]) => (InfraImpactResultBuilder()..update(updates))._build();

  _$InfraImpactResult._({
    required this.buildId,
    this.approximateArea,
    required this.direct,
    required this.dependents,
    required this.summary,
    required this.caveats,
    required this.attribution,
    required this.truncated,
  }) : super._();
  @override
  InfraImpactResult rebuild(void Function(InfraImpactResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfraImpactResultBuilder toBuilder() =>
      InfraImpactResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraImpactResult &&
        buildId == other.buildId &&
        approximateArea == other.approximateArea &&
        direct == other.direct &&
        dependents == other.dependents &&
        summary == other.summary &&
        caveats == other.caveats &&
        attribution == other.attribution &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buildId.hashCode);
    _$hash = $jc(_$hash, approximateArea.hashCode);
    _$hash = $jc(_$hash, direct.hashCode);
    _$hash = $jc(_$hash, dependents.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfraImpactResult')
          ..add('buildId', buildId)
          ..add('approximateArea', approximateArea)
          ..add('direct', direct)
          ..add('dependents', dependents)
          ..add('summary', summary)
          ..add('caveats', caveats)
          ..add('attribution', attribution)
          ..add('truncated', truncated))
        .toString();
  }
}

class InfraImpactResultBuilder
    implements Builder<InfraImpactResult, InfraImpactResultBuilder> {
  _$InfraImpactResult? _$v;

  String? _buildId;
  String? get buildId => _$this._buildId;
  set buildId(String? buildId) => _$this._buildId = buildId;

  bool? _approximateArea;
  bool? get approximateArea => _$this._approximateArea;
  set approximateArea(bool? approximateArea) =>
      _$this._approximateArea = approximateArea;

  ListBuilder<InfraNode>? _direct;
  ListBuilder<InfraNode> get direct =>
      _$this._direct ??= ListBuilder<InfraNode>();
  set direct(ListBuilder<InfraNode>? direct) => _$this._direct = direct;

  ListBuilder<InfraImpactResultDependentsInner>? _dependents;
  ListBuilder<InfraImpactResultDependentsInner> get dependents =>
      _$this._dependents ??= ListBuilder<InfraImpactResultDependentsInner>();
  set dependents(ListBuilder<InfraImpactResultDependentsInner>? dependents) =>
      _$this._dependents = dependents;

  InfraImpactResultSummaryBuilder? _summary;
  InfraImpactResultSummaryBuilder get summary =>
      _$this._summary ??= InfraImpactResultSummaryBuilder();
  set summary(InfraImpactResultSummaryBuilder? summary) =>
      _$this._summary = summary;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  ListBuilder<String>? _attribution;
  ListBuilder<String> get attribution =>
      _$this._attribution ??= ListBuilder<String>();
  set attribution(ListBuilder<String>? attribution) =>
      _$this._attribution = attribution;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  InfraImpactResultBuilder() {
    InfraImpactResult._defaults(this);
  }

  InfraImpactResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buildId = $v.buildId;
      _approximateArea = $v.approximateArea;
      _direct = $v.direct.toBuilder();
      _dependents = $v.dependents.toBuilder();
      _summary = $v.summary.toBuilder();
      _caveats = $v.caveats.toBuilder();
      _attribution = $v.attribution.toBuilder();
      _truncated = $v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraImpactResult other) {
    _$v = other as _$InfraImpactResult;
  }

  @override
  void update(void Function(InfraImpactResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraImpactResult build() => _build();

  _$InfraImpactResult _build() {
    _$InfraImpactResult _$result;
    try {
      _$result =
          _$v ??
          _$InfraImpactResult._(
            buildId: BuiltValueNullFieldError.checkNotNull(
              buildId,
              r'InfraImpactResult',
              'buildId',
            ),
            approximateArea: approximateArea,
            direct: direct.build(),
            dependents: dependents.build(),
            summary: summary.build(),
            caveats: caveats.build(),
            attribution: attribution.build(),
            truncated: BuiltValueNullFieldError.checkNotNull(
              truncated,
              r'InfraImpactResult',
              'truncated',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'direct';
        direct.build();
        _$failedField = 'dependents';
        dependents.build();
        _$failedField = 'summary';
        summary.build();
        _$failedField = 'caveats';
        caveats.build();
        _$failedField = 'attribution';
        attribution.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InfraImpactResult',
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
