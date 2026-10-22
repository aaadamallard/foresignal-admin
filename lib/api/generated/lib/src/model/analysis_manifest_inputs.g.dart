// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_manifest_inputs.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisManifestInputs extends AnalysisManifestInputs {
  @override
  final BuiltList<String>? refs;
  @override
  final BuiltMap<String, JsonObject?>? query;
  @override
  final int count;
  @override
  final String hash;

  factory _$AnalysisManifestInputs([
    void Function(AnalysisManifestInputsBuilder)? updates,
  ]) => (AnalysisManifestInputsBuilder()..update(updates))._build();

  _$AnalysisManifestInputs._({
    this.refs,
    this.query,
    required this.count,
    required this.hash,
  }) : super._();
  @override
  AnalysisManifestInputs rebuild(
    void Function(AnalysisManifestInputsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalysisManifestInputsBuilder toBuilder() =>
      AnalysisManifestInputsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisManifestInputs &&
        refs == other.refs &&
        query == other.query &&
        count == other.count &&
        hash == other.hash;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refs.hashCode);
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, hash.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisManifestInputs')
          ..add('refs', refs)
          ..add('query', query)
          ..add('count', count)
          ..add('hash', hash))
        .toString();
  }
}

class AnalysisManifestInputsBuilder
    implements Builder<AnalysisManifestInputs, AnalysisManifestInputsBuilder> {
  _$AnalysisManifestInputs? _$v;

  ListBuilder<String>? _refs;
  ListBuilder<String> get refs => _$this._refs ??= ListBuilder<String>();
  set refs(ListBuilder<String>? refs) => _$this._refs = refs;

  MapBuilder<String, JsonObject?>? _query;
  MapBuilder<String, JsonObject?> get query =>
      _$this._query ??= MapBuilder<String, JsonObject?>();
  set query(MapBuilder<String, JsonObject?>? query) => _$this._query = query;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _hash;
  String? get hash => _$this._hash;
  set hash(String? hash) => _$this._hash = hash;

  AnalysisManifestInputsBuilder() {
    AnalysisManifestInputs._defaults(this);
  }

  AnalysisManifestInputsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refs = $v.refs?.toBuilder();
      _query = $v.query?.toBuilder();
      _count = $v.count;
      _hash = $v.hash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisManifestInputs other) {
    _$v = other as _$AnalysisManifestInputs;
  }

  @override
  void update(void Function(AnalysisManifestInputsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisManifestInputs build() => _build();

  _$AnalysisManifestInputs _build() {
    _$AnalysisManifestInputs _$result;
    try {
      _$result =
          _$v ??
          _$AnalysisManifestInputs._(
            refs: _refs?.build(),
            query: _query?.build(),
            count: BuiltValueNullFieldError.checkNotNull(
              count,
              r'AnalysisManifestInputs',
              'count',
            ),
            hash: BuiltValueNullFieldError.checkNotNull(
              hash,
              r'AnalysisManifestInputs',
              'hash',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refs';
        _refs?.build();
        _$failedField = 'query';
        _query?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalysisManifestInputs',
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
