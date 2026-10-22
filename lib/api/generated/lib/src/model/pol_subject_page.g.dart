// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pol_subject_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolSubjectPage extends PolSubjectPage {
  @override
  final BuiltList<PolSubject> items;
  @override
  final String? nextCursor;

  factory _$PolSubjectPage([void Function(PolSubjectPageBuilder)? updates]) =>
      (PolSubjectPageBuilder()..update(updates))._build();

  _$PolSubjectPage._({required this.items, this.nextCursor}) : super._();
  @override
  PolSubjectPage rebuild(void Function(PolSubjectPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolSubjectPageBuilder toBuilder() => PolSubjectPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolSubjectPage &&
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
    return (newBuiltValueToStringHelper(r'PolSubjectPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class PolSubjectPageBuilder
    implements Builder<PolSubjectPage, PolSubjectPageBuilder> {
  _$PolSubjectPage? _$v;

  ListBuilder<PolSubject>? _items;
  ListBuilder<PolSubject> get items =>
      _$this._items ??= ListBuilder<PolSubject>();
  set items(ListBuilder<PolSubject>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  PolSubjectPageBuilder() {
    PolSubjectPage._defaults(this);
  }

  PolSubjectPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolSubjectPage other) {
    _$v = other as _$PolSubjectPage;
  }

  @override
  void update(void Function(PolSubjectPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolSubjectPage build() => _build();

  _$PolSubjectPage _build() {
    _$PolSubjectPage _$result;
    try {
      _$result =
          _$v ??
          _$PolSubjectPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PolSubjectPage',
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
