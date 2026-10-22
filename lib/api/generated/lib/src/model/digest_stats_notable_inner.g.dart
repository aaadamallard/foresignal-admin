// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_stats_notable_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigestStatsNotableInner extends DigestStatsNotableInner {
  @override
  final String kind;
  @override
  final BuiltList<DigestNotableItem> items;

  factory _$DigestStatsNotableInner(
          [void Function(DigestStatsNotableInnerBuilder)? updates]) =>
      (DigestStatsNotableInnerBuilder()..update(updates))._build();

  _$DigestStatsNotableInner._({required this.kind, required this.items})
      : super._();
  @override
  DigestStatsNotableInner rebuild(
          void Function(DigestStatsNotableInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigestStatsNotableInnerBuilder toBuilder() =>
      DigestStatsNotableInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestStatsNotableInner &&
        kind == other.kind &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestStatsNotableInner')
          ..add('kind', kind)
          ..add('items', items))
        .toString();
  }
}

class DigestStatsNotableInnerBuilder
    implements
        Builder<DigestStatsNotableInner, DigestStatsNotableInnerBuilder> {
  _$DigestStatsNotableInner? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  ListBuilder<DigestNotableItem>? _items;
  ListBuilder<DigestNotableItem> get items =>
      _$this._items ??= ListBuilder<DigestNotableItem>();
  set items(ListBuilder<DigestNotableItem>? items) => _$this._items = items;

  DigestStatsNotableInnerBuilder() {
    DigestStatsNotableInner._defaults(this);
  }

  DigestStatsNotableInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestStatsNotableInner other) {
    _$v = other as _$DigestStatsNotableInner;
  }

  @override
  void update(void Function(DigestStatsNotableInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestStatsNotableInner build() => _build();

  _$DigestStatsNotableInner _build() {
    _$DigestStatsNotableInner _$result;
    try {
      _$result = _$v ??
          _$DigestStatsNotableInner._(
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, r'DigestStatsNotableInner', 'kind'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DigestStatsNotableInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
