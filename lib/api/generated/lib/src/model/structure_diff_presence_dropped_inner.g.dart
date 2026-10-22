// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structure_diff_presence_dropped_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StructureDiffPresenceDroppedInner
    extends StructureDiffPresenceDroppedInner {
  @override
  final String path;
  @override
  final num from;
  @override
  final num to;

  factory _$StructureDiffPresenceDroppedInner([
    void Function(StructureDiffPresenceDroppedInnerBuilder)? updates,
  ]) => (StructureDiffPresenceDroppedInnerBuilder()..update(updates))._build();

  _$StructureDiffPresenceDroppedInner._({
    required this.path,
    required this.from,
    required this.to,
  }) : super._();
  @override
  StructureDiffPresenceDroppedInner rebuild(
    void Function(StructureDiffPresenceDroppedInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StructureDiffPresenceDroppedInnerBuilder toBuilder() =>
      StructureDiffPresenceDroppedInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StructureDiffPresenceDroppedInner &&
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
    return (newBuiltValueToStringHelper(r'StructureDiffPresenceDroppedInner')
          ..add('path', path)
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class StructureDiffPresenceDroppedInnerBuilder
    implements
        Builder<
          StructureDiffPresenceDroppedInner,
          StructureDiffPresenceDroppedInnerBuilder
        > {
  _$StructureDiffPresenceDroppedInner? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  num? _from;
  num? get from => _$this._from;
  set from(num? from) => _$this._from = from;

  num? _to;
  num? get to => _$this._to;
  set to(num? to) => _$this._to = to;

  StructureDiffPresenceDroppedInnerBuilder() {
    StructureDiffPresenceDroppedInner._defaults(this);
  }

  StructureDiffPresenceDroppedInnerBuilder get _$this {
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
  void replace(StructureDiffPresenceDroppedInner other) {
    _$v = other as _$StructureDiffPresenceDroppedInner;
  }

  @override
  void update(
    void Function(StructureDiffPresenceDroppedInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  StructureDiffPresenceDroppedInner build() => _build();

  _$StructureDiffPresenceDroppedInner _build() {
    final _$result =
        _$v ??
        _$StructureDiffPresenceDroppedInner._(
          path: BuiltValueNullFieldError.checkNotNull(
            path,
            r'StructureDiffPresenceDroppedInner',
            'path',
          ),
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'StructureDiffPresenceDroppedInner',
            'from',
          ),
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'StructureDiffPresenceDroppedInner',
            'to',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
