// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nws_forecast_payload_hazards_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NwsForecastPayloadHazardsInner extends NwsForecastPayloadHazardsInner {
  @override
  final String type;
  @override
  final String? validTime;

  factory _$NwsForecastPayloadHazardsInner(
          [void Function(NwsForecastPayloadHazardsInnerBuilder)? updates]) =>
      (NwsForecastPayloadHazardsInnerBuilder()..update(updates))._build();

  _$NwsForecastPayloadHazardsInner._({required this.type, this.validTime})
      : super._();
  @override
  NwsForecastPayloadHazardsInner rebuild(
          void Function(NwsForecastPayloadHazardsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NwsForecastPayloadHazardsInnerBuilder toBuilder() =>
      NwsForecastPayloadHazardsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NwsForecastPayloadHazardsInner &&
        type == other.type &&
        validTime == other.validTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, validTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NwsForecastPayloadHazardsInner')
          ..add('type', type)
          ..add('validTime', validTime))
        .toString();
  }
}

class NwsForecastPayloadHazardsInnerBuilder
    implements
        Builder<NwsForecastPayloadHazardsInner,
            NwsForecastPayloadHazardsInnerBuilder> {
  _$NwsForecastPayloadHazardsInner? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _validTime;
  String? get validTime => _$this._validTime;
  set validTime(String? validTime) => _$this._validTime = validTime;

  NwsForecastPayloadHazardsInnerBuilder() {
    NwsForecastPayloadHazardsInner._defaults(this);
  }

  NwsForecastPayloadHazardsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _validTime = $v.validTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NwsForecastPayloadHazardsInner other) {
    _$v = other as _$NwsForecastPayloadHazardsInner;
  }

  @override
  void update(void Function(NwsForecastPayloadHazardsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NwsForecastPayloadHazardsInner build() => _build();

  _$NwsForecastPayloadHazardsInner _build() {
    final _$result = _$v ??
        _$NwsForecastPayloadHazardsInner._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'NwsForecastPayloadHazardsInner', 'type'),
          validTime: validTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
