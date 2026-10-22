// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_style_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MapStyleMetadata extends MapStyleMetadata {
  @override
  final MapStyleMetadata? foresignal;

  factory _$MapStyleMetadata(
          [void Function(MapStyleMetadataBuilder)? updates]) =>
      (MapStyleMetadataBuilder()..update(updates))._build();

  _$MapStyleMetadata._({this.foresignal}) : super._();
  @override
  MapStyleMetadata rebuild(void Function(MapStyleMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapStyleMetadataBuilder toBuilder() =>
      MapStyleMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapStyleMetadata && foresignal == other.foresignal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foresignal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapStyleMetadata')
          ..add('foresignal', foresignal))
        .toString();
  }
}

class MapStyleMetadataBuilder
    implements Builder<MapStyleMetadata, MapStyleMetadataBuilder> {
  _$MapStyleMetadata? _$v;

  MapStyleMetadataBuilder? _foresignal;
  MapStyleMetadataBuilder get foresignal =>
      _$this._foresignal ??= MapStyleMetadataBuilder();
  set foresignal(MapStyleMetadataBuilder? foresignal) =>
      _$this._foresignal = foresignal;

  MapStyleMetadataBuilder() {
    MapStyleMetadata._defaults(this);
  }

  MapStyleMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foresignal = $v.foresignal?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapStyleMetadata other) {
    _$v = other as _$MapStyleMetadata;
  }

  @override
  void update(void Function(MapStyleMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapStyleMetadata build() => _build();

  _$MapStyleMetadata _build() {
    _$MapStyleMetadata _$result;
    try {
      _$result = _$v ??
          _$MapStyleMetadata._(
            foresignal: _foresignal?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'foresignal';
        _foresignal?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MapStyleMetadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
