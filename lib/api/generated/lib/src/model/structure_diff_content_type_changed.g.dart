// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structure_diff_content_type_changed.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StructureDiffContentTypeChanged
    extends StructureDiffContentTypeChanged {
  @override
  final String from;
  @override
  final String to;

  factory _$StructureDiffContentTypeChanged([
    void Function(StructureDiffContentTypeChangedBuilder)? updates,
  ]) => (StructureDiffContentTypeChangedBuilder()..update(updates))._build();

  _$StructureDiffContentTypeChanged._({required this.from, required this.to})
    : super._();
  @override
  StructureDiffContentTypeChanged rebuild(
    void Function(StructureDiffContentTypeChangedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StructureDiffContentTypeChangedBuilder toBuilder() =>
      StructureDiffContentTypeChangedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StructureDiffContentTypeChanged &&
        from == other.from &&
        to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StructureDiffContentTypeChanged')
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class StructureDiffContentTypeChangedBuilder
    implements
        Builder<
          StructureDiffContentTypeChanged,
          StructureDiffContentTypeChangedBuilder
        > {
  _$StructureDiffContentTypeChanged? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  StructureDiffContentTypeChangedBuilder() {
    StructureDiffContentTypeChanged._defaults(this);
  }

  StructureDiffContentTypeChangedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StructureDiffContentTypeChanged other) {
    _$v = other as _$StructureDiffContentTypeChanged;
  }

  @override
  void update(void Function(StructureDiffContentTypeChangedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StructureDiffContentTypeChanged build() => _build();

  _$StructureDiffContentTypeChanged _build() {
    final _$result =
        _$v ??
        _$StructureDiffContentTypeChanged._(
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'StructureDiffContentTypeChanged',
            'from',
          ),
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'StructureDiffContentTypeChanged',
            'to',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
