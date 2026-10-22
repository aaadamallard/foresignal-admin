// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationPage extends SituationPage {
  @override
  final BuiltList<SituationSummary> items;
  @override
  final String? nextCursor;

  factory _$SituationPage([void Function(SituationPageBuilder)? updates]) =>
      (SituationPageBuilder()..update(updates))._build();

  _$SituationPage._({required this.items, this.nextCursor}) : super._();
  @override
  SituationPage rebuild(void Function(SituationPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationPageBuilder toBuilder() => SituationPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationPage &&
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
    return (newBuiltValueToStringHelper(r'SituationPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class SituationPageBuilder
    implements Builder<SituationPage, SituationPageBuilder> {
  _$SituationPage? _$v;

  ListBuilder<SituationSummary>? _items;
  ListBuilder<SituationSummary> get items =>
      _$this._items ??= ListBuilder<SituationSummary>();
  set items(ListBuilder<SituationSummary>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  SituationPageBuilder() {
    SituationPage._defaults(this);
  }

  SituationPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationPage other) {
    _$v = other as _$SituationPage;
  }

  @override
  void update(void Function(SituationPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationPage build() => _build();

  _$SituationPage _build() {
    _$SituationPage _$result;
    try {
      _$result = _$v ??
          _$SituationPage._(
            items: items.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SituationPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
