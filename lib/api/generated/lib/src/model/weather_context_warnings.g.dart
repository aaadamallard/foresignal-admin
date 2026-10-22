// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_context_warnings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherContextWarnings extends WeatherContextWarnings {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final BuiltList<WeatherContextWarningsItemsInner>? items;

  factory _$WeatherContextWarnings(
          [void Function(WeatherContextWarningsBuilder)? updates]) =>
      (WeatherContextWarningsBuilder()..update(updates))._build();

  _$WeatherContextWarnings._(
      {required this.status, this.asOf, this.statusText, this.items})
      : super._();
  @override
  WeatherContextWarnings rebuild(
          void Function(WeatherContextWarningsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherContextWarningsBuilder toBuilder() =>
      WeatherContextWarningsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherContextWarnings &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherContextWarnings')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('items', items))
        .toString();
  }
}

class WeatherContextWarningsBuilder
    implements Builder<WeatherContextWarnings, WeatherContextWarningsBuilder> {
  _$WeatherContextWarnings? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  ListBuilder<WeatherContextWarningsItemsInner>? _items;
  ListBuilder<WeatherContextWarningsItemsInner> get items =>
      _$this._items ??= ListBuilder<WeatherContextWarningsItemsInner>();
  set items(ListBuilder<WeatherContextWarningsItemsInner>? items) =>
      _$this._items = items;

  WeatherContextWarningsBuilder() {
    WeatherContextWarnings._defaults(this);
  }

  WeatherContextWarningsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherContextWarnings other) {
    _$v = other as _$WeatherContextWarnings;
  }

  @override
  void update(void Function(WeatherContextWarningsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherContextWarnings build() => _build();

  _$WeatherContextWarnings _build() {
    _$WeatherContextWarnings _$result;
    try {
      _$result = _$v ??
          _$WeatherContextWarnings._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'WeatherContextWarnings', 'status'),
            asOf: asOf,
            statusText: statusText,
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WeatherContextWarnings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
