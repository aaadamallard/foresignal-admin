// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_envelope_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectEnvelopePage extends ObjectEnvelopePage {
  @override
  final BuiltList<ObjectEnvelope> items;
  @override
  final String? nextCursor;

  factory _$ObjectEnvelopePage([
    void Function(ObjectEnvelopePageBuilder)? updates,
  ]) => (ObjectEnvelopePageBuilder()..update(updates))._build();

  _$ObjectEnvelopePage._({required this.items, this.nextCursor}) : super._();
  @override
  ObjectEnvelopePage rebuild(
    void Function(ObjectEnvelopePageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ObjectEnvelopePageBuilder toBuilder() =>
      ObjectEnvelopePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectEnvelopePage &&
        items == other.items &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectEnvelopePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ObjectEnvelopePageBuilder
    implements Builder<ObjectEnvelopePage, ObjectEnvelopePageBuilder> {
  _$ObjectEnvelopePage? _$v;

  ListBuilder<ObjectEnvelope>? _items;
  ListBuilder<ObjectEnvelope> get items =>
      _$this._items ??= ListBuilder<ObjectEnvelope>();
  set items(ListBuilder<ObjectEnvelope>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ObjectEnvelopePageBuilder() {
    ObjectEnvelopePage._defaults(this);
  }

  ObjectEnvelopePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectEnvelopePage other) {
    _$v = other as _$ObjectEnvelopePage;
  }

  @override
  void update(void Function(ObjectEnvelopePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectEnvelopePage build() => _build();

  _$ObjectEnvelopePage _build() {
    _$ObjectEnvelopePage _$result;
    try {
      _$result =
          _$v ??
          _$ObjectEnvelopePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ObjectEnvelopePage',
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
