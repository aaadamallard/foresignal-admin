// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correlation_recipe_definition_dedup.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorrelationRecipeDefinitionDedup
    extends CorrelationRecipeDefinitionDedup {
  @override
  final num? radiusKm;
  @override
  final String? window;

  factory _$CorrelationRecipeDefinitionDedup([
    void Function(CorrelationRecipeDefinitionDedupBuilder)? updates,
  ]) => (CorrelationRecipeDefinitionDedupBuilder()..update(updates))._build();

  _$CorrelationRecipeDefinitionDedup._({this.radiusKm, this.window})
    : super._();
  @override
  CorrelationRecipeDefinitionDedup rebuild(
    void Function(CorrelationRecipeDefinitionDedupBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CorrelationRecipeDefinitionDedupBuilder toBuilder() =>
      CorrelationRecipeDefinitionDedupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrelationRecipeDefinitionDedup &&
        radiusKm == other.radiusKm &&
        window == other.window;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, radiusKm.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorrelationRecipeDefinitionDedup')
          ..add('radiusKm', radiusKm)
          ..add('window', window))
        .toString();
  }
}

class CorrelationRecipeDefinitionDedupBuilder
    implements
        Builder<
          CorrelationRecipeDefinitionDedup,
          CorrelationRecipeDefinitionDedupBuilder
        > {
  _$CorrelationRecipeDefinitionDedup? _$v;

  num? _radiusKm;
  num? get radiusKm => _$this._radiusKm;
  set radiusKm(num? radiusKm) => _$this._radiusKm = radiusKm;

  String? _window;
  String? get window => _$this._window;
  set window(String? window) => _$this._window = window;

  CorrelationRecipeDefinitionDedupBuilder() {
    CorrelationRecipeDefinitionDedup._defaults(this);
  }

  CorrelationRecipeDefinitionDedupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _radiusKm = $v.radiusKm;
      _window = $v.window;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrelationRecipeDefinitionDedup other) {
    _$v = other as _$CorrelationRecipeDefinitionDedup;
  }

  @override
  void update(void Function(CorrelationRecipeDefinitionDedupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorrelationRecipeDefinitionDedup build() => _build();

  _$CorrelationRecipeDefinitionDedup _build() {
    final _$result =
        _$v ??
        _$CorrelationRecipeDefinitionDedup._(
          radiusKm: radiusKm,
          window: window,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
