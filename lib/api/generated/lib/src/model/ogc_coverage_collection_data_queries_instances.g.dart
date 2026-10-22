// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_coverage_collection_data_queries_instances.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcCoverageCollectionDataQueriesInstances
    extends OgcCoverageCollectionDataQueriesInstances {
  @override
  final OgcLink? link;

  factory _$OgcCoverageCollectionDataQueriesInstances([
    void Function(OgcCoverageCollectionDataQueriesInstancesBuilder)? updates,
  ]) => (OgcCoverageCollectionDataQueriesInstancesBuilder()..update(updates))
      ._build();

  _$OgcCoverageCollectionDataQueriesInstances._({this.link}) : super._();
  @override
  OgcCoverageCollectionDataQueriesInstances rebuild(
    void Function(OgcCoverageCollectionDataQueriesInstancesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OgcCoverageCollectionDataQueriesInstancesBuilder toBuilder() =>
      OgcCoverageCollectionDataQueriesInstancesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCoverageCollectionDataQueriesInstances &&
        link == other.link;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'OgcCoverageCollectionDataQueriesInstances',
    )..add('link', link)).toString();
  }
}

class OgcCoverageCollectionDataQueriesInstancesBuilder
    implements
        Builder<
          OgcCoverageCollectionDataQueriesInstances,
          OgcCoverageCollectionDataQueriesInstancesBuilder
        > {
  _$OgcCoverageCollectionDataQueriesInstances? _$v;

  OgcLinkBuilder? _link;
  OgcLinkBuilder get link => _$this._link ??= OgcLinkBuilder();
  set link(OgcLinkBuilder? link) => _$this._link = link;

  OgcCoverageCollectionDataQueriesInstancesBuilder() {
    OgcCoverageCollectionDataQueriesInstances._defaults(this);
  }

  OgcCoverageCollectionDataQueriesInstancesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _link = $v.link?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCoverageCollectionDataQueriesInstances other) {
    _$v = other as _$OgcCoverageCollectionDataQueriesInstances;
  }

  @override
  void update(
    void Function(OgcCoverageCollectionDataQueriesInstancesBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  OgcCoverageCollectionDataQueriesInstances build() => _build();

  _$OgcCoverageCollectionDataQueriesInstances _build() {
    _$OgcCoverageCollectionDataQueriesInstances _$result;
    try {
      _$result =
          _$v ??
          _$OgcCoverageCollectionDataQueriesInstances._(link: _link?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'link';
        _link?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcCoverageCollectionDataQueriesInstances',
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
