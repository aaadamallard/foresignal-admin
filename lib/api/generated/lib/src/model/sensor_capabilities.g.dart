// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_capabilities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SensorCapabilities extends SensorCapabilities {
  @override
  final String? operator_;
  @override
  final BuiltList<String>? sensorTypes;
  @override
  final num? resolutionM;
  @override
  final num? swathKm;

  factory _$SensorCapabilities(
          [void Function(SensorCapabilitiesBuilder)? updates]) =>
      (SensorCapabilitiesBuilder()..update(updates))._build();

  _$SensorCapabilities._(
      {this.operator_, this.sensorTypes, this.resolutionM, this.swathKm})
      : super._();
  @override
  SensorCapabilities rebuild(
          void Function(SensorCapabilitiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SensorCapabilitiesBuilder toBuilder() =>
      SensorCapabilitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SensorCapabilities &&
        operator_ == other.operator_ &&
        sensorTypes == other.sensorTypes &&
        resolutionM == other.resolutionM &&
        swathKm == other.swathKm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, sensorTypes.hashCode);
    _$hash = $jc(_$hash, resolutionM.hashCode);
    _$hash = $jc(_$hash, swathKm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SensorCapabilities')
          ..add('operator_', operator_)
          ..add('sensorTypes', sensorTypes)
          ..add('resolutionM', resolutionM)
          ..add('swathKm', swathKm))
        .toString();
  }
}

class SensorCapabilitiesBuilder
    implements Builder<SensorCapabilities, SensorCapabilitiesBuilder> {
  _$SensorCapabilities? _$v;

  String? _operator_;
  String? get operator_ => _$this._operator_;
  set operator_(String? operator_) => _$this._operator_ = operator_;

  ListBuilder<String>? _sensorTypes;
  ListBuilder<String> get sensorTypes =>
      _$this._sensorTypes ??= ListBuilder<String>();
  set sensorTypes(ListBuilder<String>? sensorTypes) =>
      _$this._sensorTypes = sensorTypes;

  num? _resolutionM;
  num? get resolutionM => _$this._resolutionM;
  set resolutionM(num? resolutionM) => _$this._resolutionM = resolutionM;

  num? _swathKm;
  num? get swathKm => _$this._swathKm;
  set swathKm(num? swathKm) => _$this._swathKm = swathKm;

  SensorCapabilitiesBuilder() {
    SensorCapabilities._defaults(this);
  }

  SensorCapabilitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operator_ = $v.operator_;
      _sensorTypes = $v.sensorTypes?.toBuilder();
      _resolutionM = $v.resolutionM;
      _swathKm = $v.swathKm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SensorCapabilities other) {
    _$v = other as _$SensorCapabilities;
  }

  @override
  void update(void Function(SensorCapabilitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SensorCapabilities build() => _build();

  _$SensorCapabilities _build() {
    _$SensorCapabilities _$result;
    try {
      _$result = _$v ??
          _$SensorCapabilities._(
            operator_: operator_,
            sensorTypes: _sensorTypes?.build(),
            resolutionM: resolutionM,
            swathKm: swathKm,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sensorTypes';
        _sensorTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SensorCapabilities', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
