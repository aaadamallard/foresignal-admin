// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_coverage_collection_data_queries_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcCoverageCollectionDataQueriesArea
    extends OgcCoverageCollectionDataQueriesArea {
  @override
  final OgcLink? link;

  factory _$OgcCoverageCollectionDataQueriesArea(
          [void Function(OgcCoverageCollectionDataQueriesAreaBuilder)?
              updates]) =>
      (OgcCoverageCollectionDataQueriesAreaBuilder()..update(updates))._build();

  _$OgcCoverageCollectionDataQueriesArea._({this.link}) : super._();
  @override
  OgcCoverageCollectionDataQueriesArea rebuild(
          void Function(OgcCoverageCollectionDataQueriesAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcCoverageCollectionDataQueriesAreaBuilder toBuilder() =>
      OgcCoverageCollectionDataQueriesAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCoverageCollectionDataQueriesArea && link == other.link;
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
    return (newBuiltValueToStringHelper(r'OgcCoverageCollectionDataQueriesArea')
          ..add('link', link))
        .toString();
  }
}

class OgcCoverageCollectionDataQueriesAreaBuilder
    implements
        Builder<OgcCoverageCollectionDataQueriesArea,
            OgcCoverageCollectionDataQueriesAreaBuilder> {
  _$OgcCoverageCollectionDataQueriesArea? _$v;

  OgcLinkBuilder? _link;
  OgcLinkBuilder get link => _$this._link ??= OgcLinkBuilder();
  set link(OgcLinkBuilder? link) => _$this._link = link;

  OgcCoverageCollectionDataQueriesAreaBuilder() {
    OgcCoverageCollectionDataQueriesArea._defaults(this);
  }

  OgcCoverageCollectionDataQueriesAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _link = $v.link?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCoverageCollectionDataQueriesArea other) {
    _$v = other as _$OgcCoverageCollectionDataQueriesArea;
  }

  @override
  void update(
      void Function(OgcCoverageCollectionDataQueriesAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCoverageCollectionDataQueriesArea build() => _build();

  _$OgcCoverageCollectionDataQueriesArea _build() {
    _$OgcCoverageCollectionDataQueriesArea _$result;
    try {
      _$result = _$v ??
          _$OgcCoverageCollectionDataQueriesArea._(
            link: _link?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'link';
        _link?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OgcCoverageCollectionDataQueriesArea',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
