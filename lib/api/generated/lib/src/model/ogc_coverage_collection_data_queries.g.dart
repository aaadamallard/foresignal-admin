// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_coverage_collection_data_queries.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcCoverageCollectionDataQueries
    extends OgcCoverageCollectionDataQueries {
  @override
  final OgcCoverageCollectionDataQueriesPosition? position;
  @override
  final OgcCoverageCollectionDataQueriesArea? area;
  @override
  final OgcCoverageCollectionDataQueriesInstances? instances;

  factory _$OgcCoverageCollectionDataQueries(
          [void Function(OgcCoverageCollectionDataQueriesBuilder)? updates]) =>
      (OgcCoverageCollectionDataQueriesBuilder()..update(updates))._build();

  _$OgcCoverageCollectionDataQueries._(
      {this.position, this.area, this.instances})
      : super._();
  @override
  OgcCoverageCollectionDataQueries rebuild(
          void Function(OgcCoverageCollectionDataQueriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcCoverageCollectionDataQueriesBuilder toBuilder() =>
      OgcCoverageCollectionDataQueriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCoverageCollectionDataQueries &&
        position == other.position &&
        area == other.area &&
        instances == other.instances;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, instances.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcCoverageCollectionDataQueries')
          ..add('position', position)
          ..add('area', area)
          ..add('instances', instances))
        .toString();
  }
}

class OgcCoverageCollectionDataQueriesBuilder
    implements
        Builder<OgcCoverageCollectionDataQueries,
            OgcCoverageCollectionDataQueriesBuilder> {
  _$OgcCoverageCollectionDataQueries? _$v;

  OgcCoverageCollectionDataQueriesPositionBuilder? _position;
  OgcCoverageCollectionDataQueriesPositionBuilder get position =>
      _$this._position ??= OgcCoverageCollectionDataQueriesPositionBuilder();
  set position(OgcCoverageCollectionDataQueriesPositionBuilder? position) =>
      _$this._position = position;

  OgcCoverageCollectionDataQueriesAreaBuilder? _area;
  OgcCoverageCollectionDataQueriesAreaBuilder get area =>
      _$this._area ??= OgcCoverageCollectionDataQueriesAreaBuilder();
  set area(OgcCoverageCollectionDataQueriesAreaBuilder? area) =>
      _$this._area = area;

  OgcCoverageCollectionDataQueriesInstancesBuilder? _instances;
  OgcCoverageCollectionDataQueriesInstancesBuilder get instances =>
      _$this._instances ??= OgcCoverageCollectionDataQueriesInstancesBuilder();
  set instances(OgcCoverageCollectionDataQueriesInstancesBuilder? instances) =>
      _$this._instances = instances;

  OgcCoverageCollectionDataQueriesBuilder() {
    OgcCoverageCollectionDataQueries._defaults(this);
  }

  OgcCoverageCollectionDataQueriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position?.toBuilder();
      _area = $v.area?.toBuilder();
      _instances = $v.instances?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCoverageCollectionDataQueries other) {
    _$v = other as _$OgcCoverageCollectionDataQueries;
  }

  @override
  void update(void Function(OgcCoverageCollectionDataQueriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCoverageCollectionDataQueries build() => _build();

  _$OgcCoverageCollectionDataQueries _build() {
    _$OgcCoverageCollectionDataQueries _$result;
    try {
      _$result = _$v ??
          _$OgcCoverageCollectionDataQueries._(
            position: _position?.build(),
            area: _area?.build(),
            instances: _instances?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'position';
        _position?.build();
        _$failedField = 'area';
        _area?.build();
        _$failedField = 'instances';
        _instances?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OgcCoverageCollectionDataQueries', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
