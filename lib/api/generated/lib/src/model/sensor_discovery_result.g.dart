// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_discovery_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SensorDiscoveryResult extends SensorDiscoveryResult {
  @override
  final BuiltList<num>? bbox;
  @override
  final String? placeId;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final BuiltList<Sensor> items;
  @override
  final bool? truncated;
  @override
  final String? note;

  factory _$SensorDiscoveryResult(
          [void Function(SensorDiscoveryResultBuilder)? updates]) =>
      (SensorDiscoveryResultBuilder()..update(updates))._build();

  _$SensorDiscoveryResult._(
      {this.bbox,
      this.placeId,
      required this.from,
      required this.to,
      required this.items,
      this.truncated,
      this.note})
      : super._();
  @override
  SensorDiscoveryResult rebuild(
          void Function(SensorDiscoveryResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SensorDiscoveryResultBuilder toBuilder() =>
      SensorDiscoveryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SensorDiscoveryResult &&
        bbox == other.bbox &&
        placeId == other.placeId &&
        from == other.from &&
        to == other.to &&
        items == other.items &&
        truncated == other.truncated &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SensorDiscoveryResult')
          ..add('bbox', bbox)
          ..add('placeId', placeId)
          ..add('from', from)
          ..add('to', to)
          ..add('items', items)
          ..add('truncated', truncated)
          ..add('note', note))
        .toString();
  }
}

class SensorDiscoveryResultBuilder
    implements Builder<SensorDiscoveryResult, SensorDiscoveryResultBuilder> {
  _$SensorDiscoveryResult? _$v;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  ListBuilder<Sensor>? _items;
  ListBuilder<Sensor> get items => _$this._items ??= ListBuilder<Sensor>();
  set items(ListBuilder<Sensor>? items) => _$this._items = items;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  SensorDiscoveryResultBuilder() {
    SensorDiscoveryResult._defaults(this);
  }

  SensorDiscoveryResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bbox = $v.bbox?.toBuilder();
      _placeId = $v.placeId;
      _from = $v.from;
      _to = $v.to;
      _items = $v.items.toBuilder();
      _truncated = $v.truncated;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SensorDiscoveryResult other) {
    _$v = other as _$SensorDiscoveryResult;
  }

  @override
  void update(void Function(SensorDiscoveryResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SensorDiscoveryResult build() => _build();

  _$SensorDiscoveryResult _build() {
    _$SensorDiscoveryResult _$result;
    try {
      _$result = _$v ??
          _$SensorDiscoveryResult._(
            bbox: _bbox?.build(),
            placeId: placeId,
            from: BuiltValueNullFieldError.checkNotNull(
                from, r'SensorDiscoveryResult', 'from'),
            to: BuiltValueNullFieldError.checkNotNull(
                to, r'SensorDiscoveryResult', 'to'),
            items: items.build(),
            truncated: truncated,
            note: note,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bbox';
        _bbox?.build();

        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SensorDiscoveryResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
