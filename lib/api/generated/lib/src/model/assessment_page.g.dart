// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssessmentPage extends AssessmentPage {
  @override
  final BuiltList<Assessment> items;
  @override
  final String? nextCursor;

  factory _$AssessmentPage([void Function(AssessmentPageBuilder)? updates]) =>
      (AssessmentPageBuilder()..update(updates))._build();

  _$AssessmentPage._({required this.items, this.nextCursor}) : super._();
  @override
  AssessmentPage rebuild(void Function(AssessmentPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssessmentPageBuilder toBuilder() => AssessmentPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssessmentPage &&
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
    return (newBuiltValueToStringHelper(r'AssessmentPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class AssessmentPageBuilder
    implements Builder<AssessmentPage, AssessmentPageBuilder> {
  _$AssessmentPage? _$v;

  ListBuilder<Assessment>? _items;
  ListBuilder<Assessment> get items =>
      _$this._items ??= ListBuilder<Assessment>();
  set items(ListBuilder<Assessment>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  AssessmentPageBuilder() {
    AssessmentPage._defaults(this);
  }

  AssessmentPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssessmentPage other) {
    _$v = other as _$AssessmentPage;
  }

  @override
  void update(void Function(AssessmentPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssessmentPage build() => _build();

  _$AssessmentPage _build() {
    _$AssessmentPage _$result;
    try {
      _$result =
          _$v ??
          _$AssessmentPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AssessmentPage',
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
