// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SnapshotInput extends SnapshotInput {
  @override
  final String? name;
  @override
  final int? atSeq;
  @override
  final DateTime? asOf;
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<num>? bbox;
  @override
  final bool? includePrivate;
  @override
  final bool? personalUse;
  @override
  final DateTime? expiresAt;

  factory _$SnapshotInput([void Function(SnapshotInputBuilder)? updates]) =>
      (SnapshotInputBuilder()..update(updates))._build();

  _$SnapshotInput._({
    this.name,
    this.atSeq,
    this.asOf,
    this.sources,
    this.kinds,
    this.bbox,
    this.includePrivate,
    this.personalUse,
    this.expiresAt,
  }) : super._();
  @override
  SnapshotInput rebuild(void Function(SnapshotInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnapshotInputBuilder toBuilder() => SnapshotInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnapshotInput &&
        name == other.name &&
        atSeq == other.atSeq &&
        asOf == other.asOf &&
        sources == other.sources &&
        kinds == other.kinds &&
        bbox == other.bbox &&
        includePrivate == other.includePrivate &&
        personalUse == other.personalUse &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, atSeq.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, includePrivate.hashCode);
    _$hash = $jc(_$hash, personalUse.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SnapshotInput')
          ..add('name', name)
          ..add('atSeq', atSeq)
          ..add('asOf', asOf)
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('bbox', bbox)
          ..add('includePrivate', includePrivate)
          ..add('personalUse', personalUse)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class SnapshotInputBuilder
    implements Builder<SnapshotInput, SnapshotInputBuilder> {
  _$SnapshotInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _atSeq;
  int? get atSeq => _$this._atSeq;
  set atSeq(int? atSeq) => _$this._atSeq = atSeq;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  bool? _includePrivate;
  bool? get includePrivate => _$this._includePrivate;
  set includePrivate(bool? includePrivate) =>
      _$this._includePrivate = includePrivate;

  bool? _personalUse;
  bool? get personalUse => _$this._personalUse;
  set personalUse(bool? personalUse) => _$this._personalUse = personalUse;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  SnapshotInputBuilder() {
    SnapshotInput._defaults(this);
  }

  SnapshotInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _atSeq = $v.atSeq;
      _asOf = $v.asOf;
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _includePrivate = $v.includePrivate;
      _personalUse = $v.personalUse;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SnapshotInput other) {
    _$v = other as _$SnapshotInput;
  }

  @override
  void update(void Function(SnapshotInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SnapshotInput build() => _build();

  _$SnapshotInput _build() {
    _$SnapshotInput _$result;
    try {
      _$result =
          _$v ??
          _$SnapshotInput._(
            name: name,
            atSeq: atSeq,
            asOf: asOf,
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            bbox: _bbox?.build(),
            includePrivate: includePrivate,
            personalUse: personalUse,
            expiresAt: expiresAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'kinds';
        _kinds?.build();
        _$failedField = 'bbox';
        _bbox?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SnapshotInput',
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
