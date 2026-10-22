// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_coverage_collection_data_queries_position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcCoverageCollectionDataQueriesPosition
    extends OgcCoverageCollectionDataQueriesPosition {
  @override
  final OgcLink? link;

  factory _$OgcCoverageCollectionDataQueriesPosition(
          [void Function(OgcCoverageCollectionDataQueriesPositionBuilder)?
              updates]) =>
      (OgcCoverageCollectionDataQueriesPositionBuilder()..update(updates))
          ._build();

  _$OgcCoverageCollectionDataQueriesPosition._({this.link}) : super._();
  @override
  OgcCoverageCollectionDataQueriesPosition rebuild(
          void Function(OgcCoverageCollectionDataQueriesPositionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcCoverageCollectionDataQueriesPositionBuilder toBuilder() =>
      OgcCoverageCollectionDataQueriesPositionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCoverageCollectionDataQueriesPosition &&
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
            r'OgcCoverageCollectionDataQueriesPosition')
          ..add('link', link))
        .toString();
  }
}

class OgcCoverageCollectionDataQueriesPositionBuilder
    implements
        Builder<OgcCoverageCollectionDataQueriesPosition,
            OgcCoverageCollectionDataQueriesPositionBuilder> {
  _$OgcCoverageCollectionDataQueriesPosition? _$v;

  OgcLinkBuilder? _link;
  OgcLinkBuilder get link => _$this._link ??= OgcLinkBuilder();
  set link(OgcLinkBuilder? link) => _$this._link = link;

  OgcCoverageCollectionDataQueriesPositionBuilder() {
    OgcCoverageCollectionDataQueriesPosition._defaults(this);
  }

  OgcCoverageCollectionDataQueriesPositionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _link = $v.link?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCoverageCollectionDataQueriesPosition other) {
    _$v = other as _$OgcCoverageCollectionDataQueriesPosition;
  }

  @override
  void update(
      void Function(OgcCoverageCollectionDataQueriesPositionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCoverageCollectionDataQueriesPosition build() => _build();

  _$OgcCoverageCollectionDataQueriesPosition _build() {
    _$OgcCoverageCollectionDataQueriesPosition _$result;
    try {
      _$result = _$v ??
          _$OgcCoverageCollectionDataQueriesPosition._(
            link: _link?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'link';
        _link?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OgcCoverageCollectionDataQueriesPosition',
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
