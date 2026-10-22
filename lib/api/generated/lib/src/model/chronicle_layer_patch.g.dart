// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_layer_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleLayerPatch extends ChronicleLayerPatch {
  @override
  final String? name;
  @override
  final JsonObject? selector;
  @override
  final ChronicleArea? areaOverride;
  @override
  final CaptureMode? capture;
  @override
  final bool? enabled;

  factory _$ChronicleLayerPatch([
    void Function(ChronicleLayerPatchBuilder)? updates,
  ]) => (ChronicleLayerPatchBuilder()..update(updates))._build();

  _$ChronicleLayerPatch._({
    this.name,
    this.selector,
    this.areaOverride,
    this.capture,
    this.enabled,
  }) : super._();
  @override
  ChronicleLayerPatch rebuild(
    void Function(ChronicleLayerPatchBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleLayerPatchBuilder toBuilder() =>
      ChronicleLayerPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleLayerPatch &&
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
    return (newBuiltValueToStringHelper(r'ChronicleLayerPatch')
          ..add('name', name)
          ..add('selector', selector)
          ..add('areaOverride', areaOverride)
          ..add('capture', capture)
          ..add('enabled', enabled))
        .toString();
  }
}

class ChronicleLayerPatchBuilder
    implements Builder<ChronicleLayerPatch, ChronicleLayerPatchBuilder> {
  _$ChronicleLayerPatch? _$v;

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

  ChronicleLayerPatchBuilder() {
    ChronicleLayerPatch._defaults(this);
  }

  ChronicleLayerPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _selector = $v.selector;
      _areaOverride = $v.areaOverride?.toBuilder();
      _capture = $v.capture?.toBuilder();
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleLayerPatch other) {
    _$v = other as _$ChronicleLayerPatch;
  }

  @override
  void update(void Function(ChronicleLayerPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleLayerPatch build() => _build();

  _$ChronicleLayerPatch _build() {
    _$ChronicleLayerPatch _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleLayerPatch._(
            name: name,
            selector: selector,
            areaOverride: _areaOverride?.build(),
            capture: _capture?.build(),
            enabled: enabled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'areaOverride';
        _areaOverride?.build();
        _$failedField = 'capture';
        _capture?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleLayerPatch',
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
