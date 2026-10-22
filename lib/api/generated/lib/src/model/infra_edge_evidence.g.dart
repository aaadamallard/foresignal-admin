// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_edge_evidence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InfraEdgeEvidence extends InfraEdgeEvidence {
  @override
  final String? dataset;
  @override
  final num? distanceKm;
  @override
  final BuiltMap<String, JsonObject?>? matched;
  @override
  final String? notes;

  factory _$InfraEdgeEvidence(
          [void Function(InfraEdgeEvidenceBuilder)? updates]) =>
      (InfraEdgeEvidenceBuilder()..update(updates))._build();

  _$InfraEdgeEvidence._(
      {this.dataset, this.distanceKm, this.matched, this.notes})
      : super._();
  @override
  InfraEdgeEvidence rebuild(void Function(InfraEdgeEvidenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfraEdgeEvidenceBuilder toBuilder() =>
      InfraEdgeEvidenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraEdgeEvidence &&
        dataset == other.dataset &&
        distanceKm == other.distanceKm &&
        matched == other.matched &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dataset.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, matched.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfraEdgeEvidence')
          ..add('dataset', dataset)
          ..add('distanceKm', distanceKm)
          ..add('matched', matched)
          ..add('notes', notes))
        .toString();
  }
}

class InfraEdgeEvidenceBuilder
    implements Builder<InfraEdgeEvidence, InfraEdgeEvidenceBuilder> {
  _$InfraEdgeEvidence? _$v;

  String? _dataset;
  String? get dataset => _$this._dataset;
  set dataset(String? dataset) => _$this._dataset = dataset;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  MapBuilder<String, JsonObject?>? _matched;
  MapBuilder<String, JsonObject?> get matched =>
      _$this._matched ??= MapBuilder<String, JsonObject?>();
  set matched(MapBuilder<String, JsonObject?>? matched) =>
      _$this._matched = matched;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  InfraEdgeEvidenceBuilder() {
    InfraEdgeEvidence._defaults(this);
  }

  InfraEdgeEvidenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dataset = $v.dataset;
      _distanceKm = $v.distanceKm;
      _matched = $v.matched?.toBuilder();
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraEdgeEvidence other) {
    _$v = other as _$InfraEdgeEvidence;
  }

  @override
  void update(void Function(InfraEdgeEvidenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraEdgeEvidence build() => _build();

  _$InfraEdgeEvidence _build() {
    _$InfraEdgeEvidence _$result;
    try {
      _$result = _$v ??
          _$InfraEdgeEvidence._(
            dataset: dataset,
            distanceKm: distanceKm,
            matched: _matched?.build(),
            notes: notes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matched';
        _matched?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InfraEdgeEvidence', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
