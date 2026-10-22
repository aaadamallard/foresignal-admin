// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'impact_rate_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImpactRatePage extends ImpactRatePage {
  @override
  final BuiltList<ImpactRate> items;
  @override
  final String? nextCursor;

  factory _$ImpactRatePage([void Function(ImpactRatePageBuilder)? updates]) =>
      (ImpactRatePageBuilder()..update(updates))._build();

  _$ImpactRatePage._({required this.items, this.nextCursor}) : super._();
  @override
  ImpactRatePage rebuild(void Function(ImpactRatePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImpactRatePageBuilder toBuilder() => ImpactRatePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImpactRatePage &&
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
    return (newBuiltValueToStringHelper(r'ImpactRatePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ImpactRatePageBuilder
    implements Builder<ImpactRatePage, ImpactRatePageBuilder> {
  _$ImpactRatePage? _$v;

  ListBuilder<ImpactRate>? _items;
  ListBuilder<ImpactRate> get items =>
      _$this._items ??= ListBuilder<ImpactRate>();
  set items(ListBuilder<ImpactRate>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ImpactRatePageBuilder() {
    ImpactRatePage._defaults(this);
  }

  ImpactRatePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImpactRatePage other) {
    _$v = other as _$ImpactRatePage;
  }

  @override
  void update(void Function(ImpactRatePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImpactRatePage build() => _build();

  _$ImpactRatePage _build() {
    _$ImpactRatePage _$result;
    try {
      _$result =
          _$v ??
          _$ImpactRatePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ImpactRatePage',
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
