// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edr_instance_list_instances_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdrInstanceListInstancesInner extends EdrInstanceListInstancesInner {
  @override
  final String id;
  @override
  final String? title;
  @override
  final BuiltMap<String, JsonObject?>? extent;
  @override
  final BuiltList<OgcLink> links;

  factory _$EdrInstanceListInstancesInner([
    void Function(EdrInstanceListInstancesInnerBuilder)? updates,
  ]) => (EdrInstanceListInstancesInnerBuilder()..update(updates))._build();

  _$EdrInstanceListInstancesInner._({
    required this.id,
    this.title,
    this.extent,
    required this.links,
  }) : super._();
  @override
  EdrInstanceListInstancesInner rebuild(
    void Function(EdrInstanceListInstancesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdrInstanceListInstancesInnerBuilder toBuilder() =>
      EdrInstanceListInstancesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdrInstanceListInstancesInner &&
        id == other.id &&
        title == other.title &&
        extent == other.extent &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, extent.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdrInstanceListInstancesInner')
          ..add('id', id)
          ..add('title', title)
          ..add('extent', extent)
          ..add('links', links))
        .toString();
  }
}

class EdrInstanceListInstancesInnerBuilder
    implements
        Builder<
          EdrInstanceListInstancesInner,
          EdrInstanceListInstancesInnerBuilder
        > {
  _$EdrInstanceListInstancesInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  MapBuilder<String, JsonObject?>? _extent;
  MapBuilder<String, JsonObject?> get extent =>
      _$this._extent ??= MapBuilder<String, JsonObject?>();
  set extent(MapBuilder<String, JsonObject?>? extent) =>
      _$this._extent = extent;

  ListBuilder<OgcLink>? _links;
  ListBuilder<OgcLink> get links => _$this._links ??= ListBuilder<OgcLink>();
  set links(ListBuilder<OgcLink>? links) => _$this._links = links;

  EdrInstanceListInstancesInnerBuilder() {
    EdrInstanceListInstancesInner._defaults(this);
  }

  EdrInstanceListInstancesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _extent = $v.extent?.toBuilder();
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdrInstanceListInstancesInner other) {
    _$v = other as _$EdrInstanceListInstancesInner;
  }

  @override
  void update(void Function(EdrInstanceListInstancesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdrInstanceListInstancesInner build() => _build();

  _$EdrInstanceListInstancesInner _build() {
    _$EdrInstanceListInstancesInner _$result;
    try {
      _$result =
          _$v ??
          _$EdrInstanceListInstancesInner._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'EdrInstanceListInstancesInner',
              'id',
            ),
            title: title,
            extent: _extent?.build(),
            links: links.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extent';
        _extent?.build();
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdrInstanceListInstancesInner',
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
