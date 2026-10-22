// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_key_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TileKeyCreate extends TileKeyCreate {
  @override
  final String name;
  @override
  final BuiltSet<String> prefixes;
  @override
  final String ttl;
  @override
  final ReadRestriction? restrictions;

  factory _$TileKeyCreate([void Function(TileKeyCreateBuilder)? updates]) =>
      (TileKeyCreateBuilder()..update(updates))._build();

  _$TileKeyCreate._({
    required this.name,
    required this.prefixes,
    required this.ttl,
    this.restrictions,
  }) : super._();
  @override
  TileKeyCreate rebuild(void Function(TileKeyCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TileKeyCreateBuilder toBuilder() => TileKeyCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TileKeyCreate &&
        name == other.name &&
        prefixes == other.prefixes &&
        ttl == other.ttl &&
        restrictions == other.restrictions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, prefixes.hashCode);
    _$hash = $jc(_$hash, ttl.hashCode);
    _$hash = $jc(_$hash, restrictions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TileKeyCreate')
          ..add('name', name)
          ..add('prefixes', prefixes)
          ..add('ttl', ttl)
          ..add('restrictions', restrictions))
        .toString();
  }
}

class TileKeyCreateBuilder
    implements Builder<TileKeyCreate, TileKeyCreateBuilder> {
  _$TileKeyCreate? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  SetBuilder<String>? _prefixes;
  SetBuilder<String> get prefixes => _$this._prefixes ??= SetBuilder<String>();
  set prefixes(SetBuilder<String>? prefixes) => _$this._prefixes = prefixes;

  String? _ttl;
  String? get ttl => _$this._ttl;
  set ttl(String? ttl) => _$this._ttl = ttl;

  ReadRestrictionBuilder? _restrictions;
  ReadRestrictionBuilder get restrictions =>
      _$this._restrictions ??= ReadRestrictionBuilder();
  set restrictions(ReadRestrictionBuilder? restrictions) =>
      _$this._restrictions = restrictions;

  TileKeyCreateBuilder() {
    TileKeyCreate._defaults(this);
  }

  TileKeyCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _prefixes = $v.prefixes.toBuilder();
      _ttl = $v.ttl;
      _restrictions = $v.restrictions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TileKeyCreate other) {
    _$v = other as _$TileKeyCreate;
  }

  @override
  void update(void Function(TileKeyCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TileKeyCreate build() => _build();

  _$TileKeyCreate _build() {
    _$TileKeyCreate _$result;
    try {
      _$result =
          _$v ??
          _$TileKeyCreate._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'TileKeyCreate',
              'name',
            ),
            prefixes: prefixes.build(),
            ttl: BuiltValueNullFieldError.checkNotNull(
              ttl,
              r'TileKeyCreate',
              'ttl',
            ),
            restrictions: _restrictions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixes';
        prefixes.build();

        _$failedField = 'restrictions';
        _restrictions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TileKeyCreate',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
