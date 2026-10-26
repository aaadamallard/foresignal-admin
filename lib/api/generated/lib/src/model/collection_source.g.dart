// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollectionSource extends CollectionSource {
  @override
  final String sourceId;
  @override
  final bool inCollection;
  @override
  final int? enabledByUsers;

  factory _$CollectionSource([
    void Function(CollectionSourceBuilder)? updates,
  ]) => (CollectionSourceBuilder()..update(updates))._build();

  _$CollectionSource._({
    required this.sourceId,
    required this.inCollection,
    this.enabledByUsers,
  }) : super._();
  @override
  CollectionSource rebuild(void Function(CollectionSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionSourceBuilder toBuilder() =>
      CollectionSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionSource &&
        sourceId == other.sourceId &&
        inCollection == other.inCollection &&
        enabledByUsers == other.enabledByUsers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, inCollection.hashCode);
    _$hash = $jc(_$hash, enabledByUsers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectionSource')
          ..add('sourceId', sourceId)
          ..add('inCollection', inCollection)
          ..add('enabledByUsers', enabledByUsers))
        .toString();
  }
}

class CollectionSourceBuilder
    implements Builder<CollectionSource, CollectionSourceBuilder> {
  _$CollectionSource? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  bool? _inCollection;
  bool? get inCollection => _$this._inCollection;
  set inCollection(bool? inCollection) => _$this._inCollection = inCollection;

  int? _enabledByUsers;
  int? get enabledByUsers => _$this._enabledByUsers;
  set enabledByUsers(int? enabledByUsers) =>
      _$this._enabledByUsers = enabledByUsers;

  CollectionSourceBuilder() {
    CollectionSource._defaults(this);
  }

  CollectionSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _inCollection = $v.inCollection;
      _enabledByUsers = $v.enabledByUsers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionSource other) {
    _$v = other as _$CollectionSource;
  }

  @override
  void update(void Function(CollectionSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionSource build() => _build();

  _$CollectionSource _build() {
    final _$result =
        _$v ??
        _$CollectionSource._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'CollectionSource',
            'sourceId',
          ),
          inCollection: BuiltValueNullFieldError.checkNotNull(
            inCollection,
            r'CollectionSource',
            'inCollection',
          ),
          enabledByUsers: enabledByUsers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
