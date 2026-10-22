// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_signal_intel_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndicatorSignalIntelEvent extends IndicatorSignalIntelEvent {
  @override
  final String type;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final String? placeId;
  @override
  final String? bbox;

  factory _$IndicatorSignalIntelEvent([
    void Function(IndicatorSignalIntelEventBuilder)? updates,
  ]) => (IndicatorSignalIntelEventBuilder()..update(updates))._build();

  _$IndicatorSignalIntelEvent._({
    required this.type,
    this.regionCodes,
    this.placeId,
    this.bbox,
  }) : super._();
  @override
  IndicatorSignalIntelEvent rebuild(
    void Function(IndicatorSignalIntelEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IndicatorSignalIntelEventBuilder toBuilder() =>
      IndicatorSignalIntelEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndicatorSignalIntelEvent &&
        type == other.type &&
        regionCodes == other.regionCodes &&
        placeId == other.placeId &&
        bbox == other.bbox;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndicatorSignalIntelEvent')
          ..add('type', type)
          ..add('regionCodes', regionCodes)
          ..add('placeId', placeId)
          ..add('bbox', bbox))
        .toString();
  }
}

class IndicatorSignalIntelEventBuilder
    implements
        Builder<IndicatorSignalIntelEvent, IndicatorSignalIntelEventBuilder> {
  _$IndicatorSignalIntelEvent? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _bbox;
  String? get bbox => _$this._bbox;
  set bbox(String? bbox) => _$this._bbox = bbox;

  IndicatorSignalIntelEventBuilder() {
    IndicatorSignalIntelEvent._defaults(this);
  }

  IndicatorSignalIntelEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _regionCodes = $v.regionCodes?.toBuilder();
      _placeId = $v.placeId;
      _bbox = $v.bbox;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndicatorSignalIntelEvent other) {
    _$v = other as _$IndicatorSignalIntelEvent;
  }

  @override
  void update(void Function(IndicatorSignalIntelEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndicatorSignalIntelEvent build() => _build();

  _$IndicatorSignalIntelEvent _build() {
    _$IndicatorSignalIntelEvent _$result;
    try {
      _$result =
          _$v ??
          _$IndicatorSignalIntelEvent._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'IndicatorSignalIntelEvent',
              'type',
            ),
            regionCodes: _regionCodes?.build(),
            placeId: placeId,
            bbox: bbox,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        _regionCodes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IndicatorSignalIntelEvent',
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
