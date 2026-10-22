// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_resolve_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectResolveResult extends ObjectResolveResult {
  @override
  final BuiltList<ObjectEnvelope> items;
  @override
  final BuiltList<String> missing;
  @override
  final DateTime? asOf;

  factory _$ObjectResolveResult(
          [void Function(ObjectResolveResultBuilder)? updates]) =>
      (ObjectResolveResultBuilder()..update(updates))._build();

  _$ObjectResolveResult._(
      {required this.items, required this.missing, this.asOf})
      : super._();
  @override
  ObjectResolveResult rebuild(
          void Function(ObjectResolveResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectResolveResultBuilder toBuilder() =>
      ObjectResolveResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectResolveResult &&
        items == other.items &&
        missing == other.missing &&
        asOf == other.asOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, missing.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectResolveResult')
          ..add('items', items)
          ..add('missing', missing)
          ..add('asOf', asOf))
        .toString();
  }
}

class ObjectResolveResultBuilder
    implements Builder<ObjectResolveResult, ObjectResolveResultBuilder> {
  _$ObjectResolveResult? _$v;

  ListBuilder<ObjectEnvelope>? _items;
  ListBuilder<ObjectEnvelope> get items =>
      _$this._items ??= ListBuilder<ObjectEnvelope>();
  set items(ListBuilder<ObjectEnvelope>? items) => _$this._items = items;

  ListBuilder<String>? _missing;
  ListBuilder<String> get missing => _$this._missing ??= ListBuilder<String>();
  set missing(ListBuilder<String>? missing) => _$this._missing = missing;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  ObjectResolveResultBuilder() {
    ObjectResolveResult._defaults(this);
  }

  ObjectResolveResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _missing = $v.missing.toBuilder();
      _asOf = $v.asOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectResolveResult other) {
    _$v = other as _$ObjectResolveResult;
  }

  @override
  void update(void Function(ObjectResolveResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectResolveResult build() => _build();

  _$ObjectResolveResult _build() {
    _$ObjectResolveResult _$result;
    try {
      _$result = _$v ??
          _$ObjectResolveResult._(
            items: items.build(),
            missing: missing.build(),
            asOf: asOf,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
        _$failedField = 'missing';
        missing.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ObjectResolveResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
