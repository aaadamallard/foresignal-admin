// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structure_diff_delimiter_changed.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StructureDiffDelimiterChanged extends StructureDiffDelimiterChanged {
  @override
  final String from;
  @override
  final String to;

  factory _$StructureDiffDelimiterChanged([
    void Function(StructureDiffDelimiterChangedBuilder)? updates,
  ]) => (StructureDiffDelimiterChangedBuilder()..update(updates))._build();

  _$StructureDiffDelimiterChanged._({required this.from, required this.to})
    : super._();
  @override
  StructureDiffDelimiterChanged rebuild(
    void Function(StructureDiffDelimiterChangedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StructureDiffDelimiterChangedBuilder toBuilder() =>
      StructureDiffDelimiterChangedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StructureDiffDelimiterChanged &&
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
    return (newBuiltValueToStringHelper(r'StructureDiffDelimiterChanged')
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class StructureDiffDelimiterChangedBuilder
    implements
        Builder<
          StructureDiffDelimiterChanged,
          StructureDiffDelimiterChangedBuilder
        > {
  _$StructureDiffDelimiterChanged? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  StructureDiffDelimiterChangedBuilder() {
    StructureDiffDelimiterChanged._defaults(this);
  }

  StructureDiffDelimiterChangedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StructureDiffDelimiterChanged other) {
    _$v = other as _$StructureDiffDelimiterChanged;
  }

  @override
  void update(void Function(StructureDiffDelimiterChangedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StructureDiffDelimiterChanged build() => _build();

  _$StructureDiffDelimiterChanged _build() {
    final _$result =
        _$v ??
        _$StructureDiffDelimiterChanged._(
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'StructureDiffDelimiterChanged',
            'from',
          ),
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'StructureDiffDelimiterChanged',
            'to',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
