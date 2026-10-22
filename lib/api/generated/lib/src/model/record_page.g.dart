// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordPage extends RecordPage {
  @override
  final BuiltList<Record> items;
  @override
  final String? nextCursor;
  @override
  final int? watermarkSeq;
  @override
  final int? asOfSeq;
  @override
  final DateTime? asOf;
  @override
  final bool? approximate;
  @override
  final DateTime? horizon;
  @override
  final BuiltList<Attribution>? attributions;
  @override
  final int? licenceFiltered;

  factory _$RecordPage([void Function(RecordPageBuilder)? updates]) =>
      (RecordPageBuilder()..update(updates))._build();

  _$RecordPage._(
      {required this.items,
      this.nextCursor,
      this.watermarkSeq,
      this.asOfSeq,
      this.asOf,
      this.approximate,
      this.horizon,
      this.attributions,
      this.licenceFiltered})
      : super._();
  @override
  RecordPage rebuild(void Function(RecordPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordPageBuilder toBuilder() => RecordPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordPage &&
        items == other.items &&
        nextCursor == other.nextCursor &&
        watermarkSeq == other.watermarkSeq &&
        asOfSeq == other.asOfSeq &&
        asOf == other.asOf &&
        approximate == other.approximate &&
        horizon == other.horizon &&
        attributions == other.attributions &&
        licenceFiltered == other.licenceFiltered;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jc(_$hash, asOfSeq.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, approximate.hashCode);
    _$hash = $jc(_$hash, horizon.hashCode);
    _$hash = $jc(_$hash, attributions.hashCode);
    _$hash = $jc(_$hash, licenceFiltered.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecordPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor)
          ..add('watermarkSeq', watermarkSeq)
          ..add('asOfSeq', asOfSeq)
          ..add('asOf', asOf)
          ..add('approximate', approximate)
          ..add('horizon', horizon)
          ..add('attributions', attributions)
          ..add('licenceFiltered', licenceFiltered))
        .toString();
  }
}

class RecordPageBuilder implements Builder<RecordPage, RecordPageBuilder> {
  _$RecordPage? _$v;

  ListBuilder<Record>? _items;
  ListBuilder<Record> get items => _$this._items ??= ListBuilder<Record>();
  set items(ListBuilder<Record>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  int? _asOfSeq;
  int? get asOfSeq => _$this._asOfSeq;
  set asOfSeq(int? asOfSeq) => _$this._asOfSeq = asOfSeq;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  bool? _approximate;
  bool? get approximate => _$this._approximate;
  set approximate(bool? approximate) => _$this._approximate = approximate;

  DateTime? _horizon;
  DateTime? get horizon => _$this._horizon;
  set horizon(DateTime? horizon) => _$this._horizon = horizon;

  ListBuilder<Attribution>? _attributions;
  ListBuilder<Attribution> get attributions =>
      _$this._attributions ??= ListBuilder<Attribution>();
  set attributions(ListBuilder<Attribution>? attributions) =>
      _$this._attributions = attributions;

  int? _licenceFiltered;
  int? get licenceFiltered => _$this._licenceFiltered;
  set licenceFiltered(int? licenceFiltered) =>
      _$this._licenceFiltered = licenceFiltered;

  RecordPageBuilder() {
    RecordPage._defaults(this);
  }

  RecordPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _watermarkSeq = $v.watermarkSeq;
      _asOfSeq = $v.asOfSeq;
      _asOf = $v.asOf;
      _approximate = $v.approximate;
      _horizon = $v.horizon;
      _attributions = $v.attributions?.toBuilder();
      _licenceFiltered = $v.licenceFiltered;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordPage other) {
    _$v = other as _$RecordPage;
  }

  @override
  void update(void Function(RecordPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordPage build() => _build();

  _$RecordPage _build() {
    _$RecordPage _$result;
    try {
      _$result = _$v ??
          _$RecordPage._(
            items: items.build(),
            nextCursor: nextCursor,
            watermarkSeq: watermarkSeq,
            asOfSeq: asOfSeq,
            asOf: asOf,
            approximate: approximate,
            horizon: horizon,
            attributions: _attributions?.build(),
            licenceFiltered: licenceFiltered,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();

        _$failedField = 'attributions';
        _attributions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RecordPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
