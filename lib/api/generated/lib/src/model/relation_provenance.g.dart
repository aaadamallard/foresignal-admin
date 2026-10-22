// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation_provenance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RelationProvenance extends RelationProvenance {
  @override
  final String? component;
  @override
  final String? version;
  @override
  final String? manifestId;
  @override
  final String? operator_;

  factory _$RelationProvenance(
          [void Function(RelationProvenanceBuilder)? updates]) =>
      (RelationProvenanceBuilder()..update(updates))._build();

  _$RelationProvenance._(
      {this.component, this.version, this.manifestId, this.operator_})
      : super._();
  @override
  RelationProvenance rebuild(
          void Function(RelationProvenanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationProvenanceBuilder toBuilder() =>
      RelationProvenanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationProvenance &&
        component == other.component &&
        version == other.version &&
        manifestId == other.manifestId &&
        operator_ == other.operator_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelationProvenance')
          ..add('component', component)
          ..add('version', version)
          ..add('manifestId', manifestId)
          ..add('operator_', operator_))
        .toString();
  }
}

class RelationProvenanceBuilder
    implements Builder<RelationProvenance, RelationProvenanceBuilder> {
  _$RelationProvenance? _$v;

  String? _component;
  String? get component => _$this._component;
  set component(String? component) => _$this._component = component;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  String? _operator_;
  String? get operator_ => _$this._operator_;
  set operator_(String? operator_) => _$this._operator_ = operator_;

  RelationProvenanceBuilder() {
    RelationProvenance._defaults(this);
  }

  RelationProvenanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _component = $v.component;
      _version = $v.version;
      _manifestId = $v.manifestId;
      _operator_ = $v.operator_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationProvenance other) {
    _$v = other as _$RelationProvenance;
  }

  @override
  void update(void Function(RelationProvenanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelationProvenance build() => _build();

  _$RelationProvenance _build() {
    final _$result = _$v ??
        _$RelationProvenance._(
          component: component,
          version: version,
          manifestId: manifestId,
          operator_: operator_,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
