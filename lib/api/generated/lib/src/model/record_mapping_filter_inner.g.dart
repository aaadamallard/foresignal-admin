// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_mapping_filter_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordMappingFilterInner extends RecordMappingFilterInner {
  @override
  final String path;
  @override
  final String op;
  @override
  final JsonObject? value;

  factory _$RecordMappingFilterInner([
    void Function(RecordMappingFilterInnerBuilder)? updates,
  ]) => (RecordMappingFilterInnerBuilder()..update(updates))._build();

  _$RecordMappingFilterInner._({
    required this.path,
    required this.op,
    this.value,
  }) : super._();
  @override
  RecordMappingFilterInner rebuild(
    void Function(RecordMappingFilterInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecordMappingFilterInnerBuilder toBuilder() =>
      RecordMappingFilterInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordMappingFilterInner &&
        path == other.path &&
        op == other.op &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, op.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecordMappingFilterInner')
          ..add('path', path)
          ..add('op', op)
          ..add('value', value))
        .toString();
  }
}

class RecordMappingFilterInnerBuilder
    implements
        Builder<RecordMappingFilterInner, RecordMappingFilterInnerBuilder> {
  _$RecordMappingFilterInner? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _op;
  String? get op => _$this._op;
  set op(String? op) => _$this._op = op;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(JsonObject? value) => _$this._value = value;

  RecordMappingFilterInnerBuilder() {
    RecordMappingFilterInner._defaults(this);
  }

  RecordMappingFilterInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _op = $v.op;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordMappingFilterInner other) {
    _$v = other as _$RecordMappingFilterInner;
  }

  @override
  void update(void Function(RecordMappingFilterInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordMappingFilterInner build() => _build();

  _$RecordMappingFilterInner _build() {
    final _$result =
        _$v ??
        _$RecordMappingFilterInner._(
          path: BuiltValueNullFieldError.checkNotNull(
            path,
            r'RecordMappingFilterInner',
            'path',
          ),
          op: BuiltValueNullFieldError.checkNotNull(
            op,
            r'RecordMappingFilterInner',
            'op',
          ),
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
