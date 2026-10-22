// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_report_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoctorReportPage extends DoctorReportPage {
  @override
  final BuiltList<DoctorReport> items;
  @override
  final String? nextCursor;

  factory _$DoctorReportPage(
          [void Function(DoctorReportPageBuilder)? updates]) =>
      (DoctorReportPageBuilder()..update(updates))._build();

  _$DoctorReportPage._({required this.items, this.nextCursor}) : super._();
  @override
  DoctorReportPage rebuild(void Function(DoctorReportPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoctorReportPageBuilder toBuilder() =>
      DoctorReportPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoctorReportPage &&
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
    return (newBuiltValueToStringHelper(r'DoctorReportPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class DoctorReportPageBuilder
    implements Builder<DoctorReportPage, DoctorReportPageBuilder> {
  _$DoctorReportPage? _$v;

  ListBuilder<DoctorReport>? _items;
  ListBuilder<DoctorReport> get items =>
      _$this._items ??= ListBuilder<DoctorReport>();
  set items(ListBuilder<DoctorReport>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  DoctorReportPageBuilder() {
    DoctorReportPage._defaults(this);
  }

  DoctorReportPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoctorReportPage other) {
    _$v = other as _$DoctorReportPage;
  }

  @override
  void update(void Function(DoctorReportPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DoctorReportPage build() => _build();

  _$DoctorReportPage _build() {
    _$DoctorReportPage _$result;
    try {
      _$result = _$v ??
          _$DoctorReportPage._(
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
            r'DoctorReportPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
