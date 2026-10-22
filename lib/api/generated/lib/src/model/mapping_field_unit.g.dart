// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_field_unit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingFieldUnit extends MappingFieldUnit {
  @override
  final String from;
  @override
  final String to;

  factory _$MappingFieldUnit([
    void Function(MappingFieldUnitBuilder)? updates,
  ]) => (MappingFieldUnitBuilder()..update(updates))._build();

  _$MappingFieldUnit._({required this.from, required this.to}) : super._();
  @override
  MappingFieldUnit rebuild(void Function(MappingFieldUnitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MappingFieldUnitBuilder toBuilder() =>
      MappingFieldUnitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingFieldUnit && from == other.from && to == other.to;
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
    return (newBuiltValueToStringHelper(r'MappingFieldUnit')
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class MappingFieldUnitBuilder
    implements Builder<MappingFieldUnit, MappingFieldUnitBuilder> {
  _$MappingFieldUnit? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  MappingFieldUnitBuilder() {
    MappingFieldUnit._defaults(this);
  }

  MappingFieldUnitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingFieldUnit other) {
    _$v = other as _$MappingFieldUnit;
  }

  @override
  void update(void Function(MappingFieldUnitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingFieldUnit build() => _build();

  _$MappingFieldUnit _build() {
    final _$result =
        _$v ??
        _$MappingFieldUnit._(
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'MappingFieldUnit',
            'from',
          ),
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'MappingFieldUnit',
            'to',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
