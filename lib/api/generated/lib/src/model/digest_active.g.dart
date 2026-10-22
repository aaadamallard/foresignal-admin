// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_active.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigestActive extends DigestActive {
  @override
  final String sourceId;
  @override
  final String kind;
  @override
  final int entities;
  @override
  final int? previous;

  factory _$DigestActive([void Function(DigestActiveBuilder)? updates]) =>
      (DigestActiveBuilder()..update(updates))._build();

  _$DigestActive._({
    required this.sourceId,
    required this.kind,
    required this.entities,
    this.previous,
  }) : super._();
  @override
  DigestActive rebuild(void Function(DigestActiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigestActiveBuilder toBuilder() => DigestActiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestActive &&
        sourceId == other.sourceId &&
        kind == other.kind &&
        entities == other.entities &&
        previous == other.previous;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, entities.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestActive')
          ..add('sourceId', sourceId)
          ..add('kind', kind)
          ..add('entities', entities)
          ..add('previous', previous))
        .toString();
  }
}

class DigestActiveBuilder
    implements Builder<DigestActive, DigestActiveBuilder> {
  _$DigestActive? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  int? _entities;
  int? get entities => _$this._entities;
  set entities(int? entities) => _$this._entities = entities;

  int? _previous;
  int? get previous => _$this._previous;
  set previous(int? previous) => _$this._previous = previous;

  DigestActiveBuilder() {
    DigestActive._defaults(this);
  }

  DigestActiveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _kind = $v.kind;
      _entities = $v.entities;
      _previous = $v.previous;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestActive other) {
    _$v = other as _$DigestActive;
  }

  @override
  void update(void Function(DigestActiveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestActive build() => _build();

  _$DigestActive _build() {
    final _$result =
        _$v ??
        _$DigestActive._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'DigestActive',
            'sourceId',
          ),
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'DigestActive',
            'kind',
          ),
          entities: BuiltValueNullFieldError.checkNotNull(
            entities,
            r'DigestActive',
            'entities',
          ),
          previous: previous,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
