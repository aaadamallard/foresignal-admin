// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_binding_preview_effects_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalBindingPreviewEffectsInner
    extends ExternalBindingPreviewEffectsInner {
  @override
  final String? itemRef;
  @override
  final String? action;
  @override
  final String? targetRef;

  factory _$ExternalBindingPreviewEffectsInner([
    void Function(ExternalBindingPreviewEffectsInnerBuilder)? updates,
  ]) => (ExternalBindingPreviewEffectsInnerBuilder()..update(updates))._build();

  _$ExternalBindingPreviewEffectsInner._({
    this.itemRef,
    this.action,
    this.targetRef,
  }) : super._();
  @override
  ExternalBindingPreviewEffectsInner rebuild(
    void Function(ExternalBindingPreviewEffectsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExternalBindingPreviewEffectsInnerBuilder toBuilder() =>
      ExternalBindingPreviewEffectsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalBindingPreviewEffectsInner &&
        itemRef == other.itemRef &&
        action == other.action &&
        targetRef == other.targetRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, itemRef.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, targetRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalBindingPreviewEffectsInner')
          ..add('itemRef', itemRef)
          ..add('action', action)
          ..add('targetRef', targetRef))
        .toString();
  }
}

class ExternalBindingPreviewEffectsInnerBuilder
    implements
        Builder<
          ExternalBindingPreviewEffectsInner,
          ExternalBindingPreviewEffectsInnerBuilder
        > {
  _$ExternalBindingPreviewEffectsInner? _$v;

  String? _itemRef;
  String? get itemRef => _$this._itemRef;
  set itemRef(String? itemRef) => _$this._itemRef = itemRef;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _targetRef;
  String? get targetRef => _$this._targetRef;
  set targetRef(String? targetRef) => _$this._targetRef = targetRef;

  ExternalBindingPreviewEffectsInnerBuilder() {
    ExternalBindingPreviewEffectsInner._defaults(this);
  }

  ExternalBindingPreviewEffectsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemRef = $v.itemRef;
      _action = $v.action;
      _targetRef = $v.targetRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalBindingPreviewEffectsInner other) {
    _$v = other as _$ExternalBindingPreviewEffectsInner;
  }

  @override
  void update(
    void Function(ExternalBindingPreviewEffectsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ExternalBindingPreviewEffectsInner build() => _build();

  _$ExternalBindingPreviewEffectsInner _build() {
    final _$result =
        _$v ??
        _$ExternalBindingPreviewEffectsInner._(
          itemRef: itemRef,
          action: action,
          targetRef: targetRef,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
