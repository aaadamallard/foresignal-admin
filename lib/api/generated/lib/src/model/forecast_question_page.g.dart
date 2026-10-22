// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_question_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastQuestionPage extends ForecastQuestionPage {
  @override
  final BuiltList<ForecastQuestionSummary> items;
  @override
  final String? nextCursor;

  factory _$ForecastQuestionPage(
          [void Function(ForecastQuestionPageBuilder)? updates]) =>
      (ForecastQuestionPageBuilder()..update(updates))._build();

  _$ForecastQuestionPage._({required this.items, this.nextCursor}) : super._();
  @override
  ForecastQuestionPage rebuild(
          void Function(ForecastQuestionPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastQuestionPageBuilder toBuilder() =>
      ForecastQuestionPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastQuestionPage &&
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
    return (newBuiltValueToStringHelper(r'ForecastQuestionPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ForecastQuestionPageBuilder
    implements Builder<ForecastQuestionPage, ForecastQuestionPageBuilder> {
  _$ForecastQuestionPage? _$v;

  ListBuilder<ForecastQuestionSummary>? _items;
  ListBuilder<ForecastQuestionSummary> get items =>
      _$this._items ??= ListBuilder<ForecastQuestionSummary>();
  set items(ListBuilder<ForecastQuestionSummary>? items) =>
      _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ForecastQuestionPageBuilder() {
    ForecastQuestionPage._defaults(this);
  }

  ForecastQuestionPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastQuestionPage other) {
    _$v = other as _$ForecastQuestionPage;
  }

  @override
  void update(void Function(ForecastQuestionPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastQuestionPage build() => _build();

  _$ForecastQuestionPage _build() {
    _$ForecastQuestionPage _$result;
    try {
      _$result = _$v ??
          _$ForecastQuestionPage._(
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
            r'ForecastQuestionPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
