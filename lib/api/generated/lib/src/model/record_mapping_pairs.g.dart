// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_mapping_pairs.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordMappingPairs extends RecordMappingPairs {
  @override
  final String path;
  @override
  final String key;
  @override
  final String value;

  factory _$RecordMappingPairs([
    void Function(RecordMappingPairsBuilder)? updates,
  ]) => (RecordMappingPairsBuilder()..update(updates))._build();

  _$RecordMappingPairs._({
    required this.path,
    required this.key,
    required this.value,
  }) : super._();
  @override
  RecordMappingPairs rebuild(
    void Function(RecordMappingPairsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecordMappingPairsBuilder toBuilder() =>
      RecordMappingPairsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordMappingPairs &&
        path == other.path &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecordMappingPairs')
          ..add('path', path)
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class RecordMappingPairsBuilder
    implements Builder<RecordMappingPairs, RecordMappingPairsBuilder> {
  _$RecordMappingPairs? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  RecordMappingPairsBuilder() {
    RecordMappingPairs._defaults(this);
  }

  RecordMappingPairsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordMappingPairs other) {
    _$v = other as _$RecordMappingPairs;
  }

  @override
  void update(void Function(RecordMappingPairsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordMappingPairs build() => _build();

  _$RecordMappingPairs _build() {
    final _$result =
        _$v ??
        _$RecordMappingPairs._(
          path: BuiltValueNullFieldError.checkNotNull(
            path,
            r'RecordMappingPairs',
            'path',
          ),
          key: BuiltValueNullFieldError.checkNotNull(
            key,
            r'RecordMappingPairs',
            'key',
          ),
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'RecordMappingPairs',
            'value',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
