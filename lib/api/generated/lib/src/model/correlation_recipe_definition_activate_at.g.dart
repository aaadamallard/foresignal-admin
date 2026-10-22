// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correlation_recipe_definition_activate_at.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorrelationRecipeDefinitionActivateAt
    extends CorrelationRecipeDefinitionActivateAt {
  @override
  final int? members;
  @override
  final num? confidence;
  @override
  final int? modalities;

  factory _$CorrelationRecipeDefinitionActivateAt(
          [void Function(CorrelationRecipeDefinitionActivateAtBuilder)?
              updates]) =>
      (CorrelationRecipeDefinitionActivateAtBuilder()..update(updates))
          ._build();

  _$CorrelationRecipeDefinitionActivateAt._(
      {this.members, this.confidence, this.modalities})
      : super._();
  @override
  CorrelationRecipeDefinitionActivateAt rebuild(
          void Function(CorrelationRecipeDefinitionActivateAtBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorrelationRecipeDefinitionActivateAtBuilder toBuilder() =>
      CorrelationRecipeDefinitionActivateAtBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrelationRecipeDefinitionActivateAt &&
        members == other.members &&
        confidence == other.confidence &&
        modalities == other.modalities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, modalities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CorrelationRecipeDefinitionActivateAt')
          ..add('members', members)
          ..add('confidence', confidence)
          ..add('modalities', modalities))
        .toString();
  }
}

class CorrelationRecipeDefinitionActivateAtBuilder
    implements
        Builder<CorrelationRecipeDefinitionActivateAt,
            CorrelationRecipeDefinitionActivateAtBuilder> {
  _$CorrelationRecipeDefinitionActivateAt? _$v;

  int? _members;
  int? get members => _$this._members;
  set members(int? members) => _$this._members = members;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  int? _modalities;
  int? get modalities => _$this._modalities;
  set modalities(int? modalities) => _$this._modalities = modalities;

  CorrelationRecipeDefinitionActivateAtBuilder() {
    CorrelationRecipeDefinitionActivateAt._defaults(this);
  }

  CorrelationRecipeDefinitionActivateAtBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _members = $v.members;
      _confidence = $v.confidence;
      _modalities = $v.modalities;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrelationRecipeDefinitionActivateAt other) {
    _$v = other as _$CorrelationRecipeDefinitionActivateAt;
  }

  @override
  void update(
      void Function(CorrelationRecipeDefinitionActivateAtBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorrelationRecipeDefinitionActivateAt build() => _build();

  _$CorrelationRecipeDefinitionActivateAt _build() {
    final _$result = _$v ??
        _$CorrelationRecipeDefinitionActivateAt._(
          members: members,
          confidence: confidence,
          modalities: modalities,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
