// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_run_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExerciseRunPage extends ExerciseRunPage {
  @override
  final BuiltList<ExerciseRun> items;
  @override
  final String? nextCursor;

  factory _$ExerciseRunPage([void Function(ExerciseRunPageBuilder)? updates]) =>
      (ExerciseRunPageBuilder()..update(updates))._build();

  _$ExerciseRunPage._({required this.items, this.nextCursor}) : super._();
  @override
  ExerciseRunPage rebuild(void Function(ExerciseRunPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseRunPageBuilder toBuilder() => ExerciseRunPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExerciseRunPage &&
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
    return (newBuiltValueToStringHelper(r'ExerciseRunPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ExerciseRunPageBuilder
    implements Builder<ExerciseRunPage, ExerciseRunPageBuilder> {
  _$ExerciseRunPage? _$v;

  ListBuilder<ExerciseRun>? _items;
  ListBuilder<ExerciseRun> get items =>
      _$this._items ??= ListBuilder<ExerciseRun>();
  set items(ListBuilder<ExerciseRun>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ExerciseRunPageBuilder() {
    ExerciseRunPage._defaults(this);
  }

  ExerciseRunPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseRunPage other) {
    _$v = other as _$ExerciseRunPage;
  }

  @override
  void update(void Function(ExerciseRunPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExerciseRunPage build() => _build();

  _$ExerciseRunPage _build() {
    _$ExerciseRunPage _$result;
    try {
      _$result =
          _$v ??
          _$ExerciseRunPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExerciseRunPage',
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
