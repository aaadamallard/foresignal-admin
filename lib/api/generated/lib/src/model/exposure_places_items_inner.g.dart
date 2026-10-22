// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure_places_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExposurePlacesItemsInner extends ExposurePlacesItemsInner {
  @override
  final String placeId;
  @override
  final String name;

  factory _$ExposurePlacesItemsInner(
          [void Function(ExposurePlacesItemsInnerBuilder)? updates]) =>
      (ExposurePlacesItemsInnerBuilder()..update(updates))._build();

  _$ExposurePlacesItemsInner._({required this.placeId, required this.name})
      : super._();
  @override
  ExposurePlacesItemsInner rebuild(
          void Function(ExposurePlacesItemsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExposurePlacesItemsInnerBuilder toBuilder() =>
      ExposurePlacesItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExposurePlacesItemsInner &&
        placeId == other.placeId &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExposurePlacesItemsInner')
          ..add('placeId', placeId)
          ..add('name', name))
        .toString();
  }
}

class ExposurePlacesItemsInnerBuilder
    implements
        Builder<ExposurePlacesItemsInner, ExposurePlacesItemsInnerBuilder> {
  _$ExposurePlacesItemsInner? _$v;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ExposurePlacesItemsInnerBuilder() {
    ExposurePlacesItemsInner._defaults(this);
  }

  ExposurePlacesItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placeId = $v.placeId;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExposurePlacesItemsInner other) {
    _$v = other as _$ExposurePlacesItemsInner;
  }

  @override
  void update(void Function(ExposurePlacesItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExposurePlacesItemsInner build() => _build();

  _$ExposurePlacesItemsInner _build() {
    final _$result = _$v ??
        _$ExposurePlacesItemsInner._(
          placeId: BuiltValueNullFieldError.checkNotNull(
              placeId, r'ExposurePlacesItemsInner', 'placeId'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ExposurePlacesItemsInner', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
