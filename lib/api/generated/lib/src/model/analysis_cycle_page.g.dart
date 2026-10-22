// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_cycle_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisCyclePage extends AnalysisCyclePage {
  @override
  final BuiltList<AnalysisCycle> items;
  @override
  final String? nextCursor;

  factory _$AnalysisCyclePage([
    void Function(AnalysisCyclePageBuilder)? updates,
  ]) => (AnalysisCyclePageBuilder()..update(updates))._build();

  _$AnalysisCyclePage._({required this.items, this.nextCursor}) : super._();
  @override
  AnalysisCyclePage rebuild(void Function(AnalysisCyclePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisCyclePageBuilder toBuilder() =>
      AnalysisCyclePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisCyclePage &&
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
    return (newBuiltValueToStringHelper(r'AnalysisCyclePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class AnalysisCyclePageBuilder
    implements Builder<AnalysisCyclePage, AnalysisCyclePageBuilder> {
  _$AnalysisCyclePage? _$v;

  ListBuilder<AnalysisCycle>? _items;
  ListBuilder<AnalysisCycle> get items =>
      _$this._items ??= ListBuilder<AnalysisCycle>();
  set items(ListBuilder<AnalysisCycle>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  AnalysisCyclePageBuilder() {
    AnalysisCyclePage._defaults(this);
  }

  AnalysisCyclePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisCyclePage other) {
    _$v = other as _$AnalysisCyclePage;
  }

  @override
  void update(void Function(AnalysisCyclePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisCyclePage build() => _build();

  _$AnalysisCyclePage _build() {
    _$AnalysisCyclePage _$result;
    try {
      _$result =
          _$v ??
          _$AnalysisCyclePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalysisCyclePage',
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
