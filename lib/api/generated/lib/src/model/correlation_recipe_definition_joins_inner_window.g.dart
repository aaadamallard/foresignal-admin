// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correlation_recipe_definition_joins_inner_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorrelationRecipeDefinitionJoinsInnerWindow
    extends CorrelationRecipeDefinitionJoinsInnerWindow {
  @override
  final String? before;
  @override
  final String? after;

  factory _$CorrelationRecipeDefinitionJoinsInnerWindow([
    void Function(CorrelationRecipeDefinitionJoinsInnerWindowBuilder)? updates,
  ]) => (CorrelationRecipeDefinitionJoinsInnerWindowBuilder()..update(updates))
      ._build();

  _$CorrelationRecipeDefinitionJoinsInnerWindow._({this.before, this.after})
    : super._();
  @override
  CorrelationRecipeDefinitionJoinsInnerWindow rebuild(
    void Function(CorrelationRecipeDefinitionJoinsInnerWindowBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CorrelationRecipeDefinitionJoinsInnerWindowBuilder toBuilder() =>
      CorrelationRecipeDefinitionJoinsInnerWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrelationRecipeDefinitionJoinsInnerWindow &&
        before == other.before &&
        after == other.after;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, before.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CorrelationRecipeDefinitionJoinsInnerWindow',
          )
          ..add('before', before)
          ..add('after', after))
        .toString();
  }
}

class CorrelationRecipeDefinitionJoinsInnerWindowBuilder
    implements
        Builder<
          CorrelationRecipeDefinitionJoinsInnerWindow,
          CorrelationRecipeDefinitionJoinsInnerWindowBuilder
        > {
  _$CorrelationRecipeDefinitionJoinsInnerWindow? _$v;

  String? _before;
  String? get before => _$this._before;
  set before(String? before) => _$this._before = before;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  CorrelationRecipeDefinitionJoinsInnerWindowBuilder() {
    CorrelationRecipeDefinitionJoinsInnerWindow._defaults(this);
  }

  CorrelationRecipeDefinitionJoinsInnerWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _before = $v.before;
      _after = $v.after;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrelationRecipeDefinitionJoinsInnerWindow other) {
    _$v = other as _$CorrelationRecipeDefinitionJoinsInnerWindow;
  }

  @override
  void update(
    void Function(CorrelationRecipeDefinitionJoinsInnerWindowBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CorrelationRecipeDefinitionJoinsInnerWindow build() => _build();

  _$CorrelationRecipeDefinitionJoinsInnerWindow _build() {
    final _$result =
        _$v ??
        _$CorrelationRecipeDefinitionJoinsInnerWindow._(
          before: before,
          after: after,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
