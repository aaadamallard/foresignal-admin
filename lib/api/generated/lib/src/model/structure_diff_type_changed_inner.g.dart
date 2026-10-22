// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structure_diff_type_changed_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StructureDiffTypeChangedInner extends StructureDiffTypeChangedInner {
  @override
  final String path;
  @override
  final String from;
  @override
  final String to;

  factory _$StructureDiffTypeChangedInner(
          [void Function(StructureDiffTypeChangedInnerBuilder)? updates]) =>
      (StructureDiffTypeChangedInnerBuilder()..update(updates))._build();

  _$StructureDiffTypeChangedInner._(
      {required this.path, required this.from, required this.to})
      : super._();
  @override
  StructureDiffTypeChangedInner rebuild(
          void Function(StructureDiffTypeChangedInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StructureDiffTypeChangedInnerBuilder toBuilder() =>
      StructureDiffTypeChangedInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StructureDiffTypeChangedInner &&
        path == other.path &&
        from == other.from &&
        to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StructureDiffTypeChangedInner')
          ..add('path', path)
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class StructureDiffTypeChangedInnerBuilder
    implements
        Builder<StructureDiffTypeChangedInner,
            StructureDiffTypeChangedInnerBuilder> {
  _$StructureDiffTypeChangedInner? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  StructureDiffTypeChangedInnerBuilder() {
    StructureDiffTypeChangedInner._defaults(this);
  }

  StructureDiffTypeChangedInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _from = $v.from;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StructureDiffTypeChangedInner other) {
    _$v = other as _$StructureDiffTypeChangedInner;
  }

  @override
  void update(void Function(StructureDiffTypeChangedInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StructureDiffTypeChangedInner build() => _build();

  _$StructureDiffTypeChangedInner _build() {
    final _$result = _$v ??
        _$StructureDiffTypeChangedInner._(
          path: BuiltValueNullFieldError.checkNotNull(
              path, r'StructureDiffTypeChangedInner', 'path'),
          from: BuiltValueNullFieldError.checkNotNull(
              from, r'StructureDiffTypeChangedInner', 'from'),
          to: BuiltValueNullFieldError.checkNotNull(
              to, r'StructureDiffTypeChangedInner', 'to'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
