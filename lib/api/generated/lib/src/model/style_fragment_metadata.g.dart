// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_fragment_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StyleFragmentMetadata extends StyleFragmentMetadata {
  @override
  final BuiltMap<String, String>? legends;
  @override
  final BuiltList<Attribution>? attribution;

  factory _$StyleFragmentMetadata(
          [void Function(StyleFragmentMetadataBuilder)? updates]) =>
      (StyleFragmentMetadataBuilder()..update(updates))._build();

  _$StyleFragmentMetadata._({this.legends, this.attribution}) : super._();
  @override
  StyleFragmentMetadata rebuild(
          void Function(StyleFragmentMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StyleFragmentMetadataBuilder toBuilder() =>
      StyleFragmentMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StyleFragmentMetadata &&
        legends == other.legends &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, legends.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StyleFragmentMetadata')
          ..add('legends', legends)
          ..add('attribution', attribution))
        .toString();
  }
}

class StyleFragmentMetadataBuilder
    implements Builder<StyleFragmentMetadata, StyleFragmentMetadataBuilder> {
  _$StyleFragmentMetadata? _$v;

  MapBuilder<String, String>? _legends;
  MapBuilder<String, String> get legends =>
      _$this._legends ??= MapBuilder<String, String>();
  set legends(MapBuilder<String, String>? legends) => _$this._legends = legends;

  ListBuilder<Attribution>? _attribution;
  ListBuilder<Attribution> get attribution =>
      _$this._attribution ??= ListBuilder<Attribution>();
  set attribution(ListBuilder<Attribution>? attribution) =>
      _$this._attribution = attribution;

  StyleFragmentMetadataBuilder() {
    StyleFragmentMetadata._defaults(this);
  }

  StyleFragmentMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _legends = $v.legends?.toBuilder();
      _attribution = $v.attribution?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StyleFragmentMetadata other) {
    _$v = other as _$StyleFragmentMetadata;
  }

  @override
  void update(void Function(StyleFragmentMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StyleFragmentMetadata build() => _build();

  _$StyleFragmentMetadata _build() {
    _$StyleFragmentMetadata _$result;
    try {
      _$result = _$v ??
          _$StyleFragmentMetadata._(
            legends: _legends?.build(),
            attribution: _attribution?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'legends';
        _legends?.build();
        _$failedField = 'attribution';
        _attribution?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StyleFragmentMetadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
