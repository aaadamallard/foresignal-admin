// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_layer_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleLayerInput extends ChronicleLayerInput {
  @override
  final String name;
  @override
  final JsonObject? selector;
  @override
  final ChronicleArea? areaOverride;
  @override
  final CaptureMode capture;
  @override
  final bool? enabled;

  factory _$ChronicleLayerInput(
          [void Function(ChronicleLayerInputBuilder)? updates]) =>
      (ChronicleLayerInputBuilder()..update(updates))._build();

  _$ChronicleLayerInput._(
      {required this.name,
      this.selector,
      this.areaOverride,
      required this.capture,
      this.enabled})
      : super._();
  @override
  ChronicleLayerInput rebuild(
          void Function(ChronicleLayerInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleLayerInputBuilder toBuilder() =>
      ChronicleLayerInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleLayerInput &&
        name == other.name &&
        selector == other.selector &&
        areaOverride == other.areaOverride &&
        capture == other.capture &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, selector.hashCode);
    _$hash = $jc(_$hash, areaOverride.hashCode);
    _$hash = $jc(_$hash, capture.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleLayerInput')
          ..add('name', name)
          ..add('selector', selector)
          ..add('areaOverride', areaOverride)
          ..add('capture', capture)
          ..add('enabled', enabled))
        .toString();
  }
}

class ChronicleLayerInputBuilder
    implements Builder<ChronicleLayerInput, ChronicleLayerInputBuilder> {
  _$ChronicleLayerInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  JsonObject? _selector;
  JsonObject? get selector => _$this._selector;
  set selector(JsonObject? selector) => _$this._selector = selector;

  ChronicleAreaBuilder? _areaOverride;
  ChronicleAreaBuilder get areaOverride =>
      _$this._areaOverride ??= ChronicleAreaBuilder();
  set areaOverride(ChronicleAreaBuilder? areaOverride) =>
      _$this._areaOverride = areaOverride;

  CaptureModeBuilder? _capture;
  CaptureModeBuilder get capture => _$this._capture ??= CaptureModeBuilder();
  set capture(CaptureModeBuilder? capture) => _$this._capture = capture;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  ChronicleLayerInputBuilder() {
    ChronicleLayerInput._defaults(this);
  }

  ChronicleLayerInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _selector = $v.selector;
      _areaOverride = $v.areaOverride?.toBuilder();
      _capture = $v.capture.toBuilder();
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleLayerInput other) {
    _$v = other as _$ChronicleLayerInput;
  }

  @override
  void update(void Function(ChronicleLayerInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleLayerInput build() => _build();

  _$ChronicleLayerInput _build() {
    _$ChronicleLayerInput _$result;
    try {
      _$result = _$v ??
          _$ChronicleLayerInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ChronicleLayerInput', 'name'),
            selector: selector,
            areaOverride: _areaOverride?.build(),
            capture: capture.build(),
            enabled: enabled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'areaOverride';
        _areaOverride?.build();
        _$failedField = 'capture';
        capture.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleLayerInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
