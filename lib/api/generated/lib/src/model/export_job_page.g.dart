// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_job_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportJobPage extends ExportJobPage {
  @override
  final BuiltList<ExportJob> items;
  @override
  final String? nextCursor;

  factory _$ExportJobPage([void Function(ExportJobPageBuilder)? updates]) =>
      (ExportJobPageBuilder()..update(updates))._build();

  _$ExportJobPage._({required this.items, this.nextCursor}) : super._();
  @override
  ExportJobPage rebuild(void Function(ExportJobPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportJobPageBuilder toBuilder() => ExportJobPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportJobPage &&
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
    return (newBuiltValueToStringHelper(r'ExportJobPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ExportJobPageBuilder
    implements Builder<ExportJobPage, ExportJobPageBuilder> {
  _$ExportJobPage? _$v;

  ListBuilder<ExportJob>? _items;
  ListBuilder<ExportJob> get items =>
      _$this._items ??= ListBuilder<ExportJob>();
  set items(ListBuilder<ExportJob>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ExportJobPageBuilder() {
    ExportJobPage._defaults(this);
  }

  ExportJobPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportJobPage other) {
    _$v = other as _$ExportJobPage;
  }

  @override
  void update(void Function(ExportJobPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportJobPage build() => _build();

  _$ExportJobPage _build() {
    _$ExportJobPage _$result;
    try {
      _$result =
          _$v ??
          _$ExportJobPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExportJobPage',
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
