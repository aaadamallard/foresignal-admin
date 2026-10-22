// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack_spec_vector.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PackSpecVector extends PackSpecVector {
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final DateTime? asOf;

  factory _$PackSpecVector([void Function(PackSpecVectorBuilder)? updates]) =>
      (PackSpecVectorBuilder()..update(updates))._build();

  _$PackSpecVector._({this.sources, this.kinds, this.asOf}) : super._();
  @override
  PackSpecVector rebuild(void Function(PackSpecVectorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackSpecVectorBuilder toBuilder() => PackSpecVectorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackSpecVector &&
        sources == other.sources &&
        kinds == other.kinds &&
        asOf == other.asOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PackSpecVector')
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('asOf', asOf))
        .toString();
  }
}

class PackSpecVectorBuilder
    implements Builder<PackSpecVector, PackSpecVectorBuilder> {
  _$PackSpecVector? _$v;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  PackSpecVectorBuilder() {
    PackSpecVector._defaults(this);
  }

  PackSpecVectorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _asOf = $v.asOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackSpecVector other) {
    _$v = other as _$PackSpecVector;
  }

  @override
  void update(void Function(PackSpecVectorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PackSpecVector build() => _build();

  _$PackSpecVector _build() {
    _$PackSpecVector _$result;
    try {
      _$result =
          _$v ??
          _$PackSpecVector._(
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            asOf: asOf,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'kinds';
        _kinds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PackSpecVector',
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
