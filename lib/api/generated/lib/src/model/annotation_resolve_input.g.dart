// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotation_resolve_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnnotationResolveInput extends AnnotationResolveInput {
  @override
  final bool? resolved;

  factory _$AnnotationResolveInput(
          [void Function(AnnotationResolveInputBuilder)? updates]) =>
      (AnnotationResolveInputBuilder()..update(updates))._build();

  _$AnnotationResolveInput._({this.resolved}) : super._();
  @override
  AnnotationResolveInput rebuild(
          void Function(AnnotationResolveInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnotationResolveInputBuilder toBuilder() =>
      AnnotationResolveInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnotationResolveInput && resolved == other.resolved;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resolved.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnotationResolveInput')
          ..add('resolved', resolved))
        .toString();
  }
}

class AnnotationResolveInputBuilder
    implements Builder<AnnotationResolveInput, AnnotationResolveInputBuilder> {
  _$AnnotationResolveInput? _$v;

  bool? _resolved;
  bool? get resolved => _$this._resolved;
  set resolved(bool? resolved) => _$this._resolved = resolved;

  AnnotationResolveInputBuilder() {
    AnnotationResolveInput._defaults(this);
  }

  AnnotationResolveInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resolved = $v.resolved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnotationResolveInput other) {
    _$v = other as _$AnnotationResolveInput;
  }

  @override
  void update(void Function(AnnotationResolveInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnotationResolveInput build() => _build();

  _$AnnotationResolveInput _build() {
    final _$result = _$v ??
        _$AnnotationResolveInput._(
          resolved: resolved,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
