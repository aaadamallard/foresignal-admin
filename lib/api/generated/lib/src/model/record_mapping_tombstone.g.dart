// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_mapping_tombstone.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordMappingTombstone extends RecordMappingTombstone {
  @override
  final String path;
  @override
  final JsonObject? equals;
  @override
  final BuiltList<JsonObject?>? in_;

  factory _$RecordMappingTombstone(
          [void Function(RecordMappingTombstoneBuilder)? updates]) =>
      (RecordMappingTombstoneBuilder()..update(updates))._build();

  _$RecordMappingTombstone._({required this.path, this.equals, this.in_})
      : super._();
  @override
  RecordMappingTombstone rebuild(
          void Function(RecordMappingTombstoneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordMappingTombstoneBuilder toBuilder() =>
      RecordMappingTombstoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordMappingTombstone &&
        path == other.path &&
        equals == other.equals &&
        in_ == other.in_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, equals.hashCode);
    _$hash = $jc(_$hash, in_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecordMappingTombstone')
          ..add('path', path)
          ..add('equals', equals)
          ..add('in_', in_))
        .toString();
  }
}

class RecordMappingTombstoneBuilder
    implements Builder<RecordMappingTombstone, RecordMappingTombstoneBuilder> {
  _$RecordMappingTombstone? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  JsonObject? _equals;
  JsonObject? get equals => _$this._equals;
  set equals(JsonObject? equals) => _$this._equals = equals;

  ListBuilder<JsonObject?>? _in_;
  ListBuilder<JsonObject?> get in_ =>
      _$this._in_ ??= ListBuilder<JsonObject?>();
  set in_(ListBuilder<JsonObject?>? in_) => _$this._in_ = in_;

  RecordMappingTombstoneBuilder() {
    RecordMappingTombstone._defaults(this);
  }

  RecordMappingTombstoneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _equals = $v.equals;
      _in_ = $v.in_?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordMappingTombstone other) {
    _$v = other as _$RecordMappingTombstone;
  }

  @override
  void update(void Function(RecordMappingTombstoneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordMappingTombstone build() => _build();

  _$RecordMappingTombstone _build() {
    _$RecordMappingTombstone _$result;
    try {
      _$result = _$v ??
          _$RecordMappingTombstone._(
            path: BuiltValueNullFieldError.checkNotNull(
                path, r'RecordMappingTombstone', 'path'),
            equals: equals,
            in_: _in_?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'in_';
        _in_?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RecordMappingTombstone', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
