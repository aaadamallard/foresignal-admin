// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_relevance_analysis_shared.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceRelevanceAnalysisShared extends SourceRelevanceAnalysisShared {
  @override
  final BuiltList<String> kinds;
  @override
  final BuiltList<String> entityTypes;

  factory _$SourceRelevanceAnalysisShared([
    void Function(SourceRelevanceAnalysisSharedBuilder)? updates,
  ]) => (SourceRelevanceAnalysisSharedBuilder()..update(updates))._build();

  _$SourceRelevanceAnalysisShared._({
    required this.kinds,
    required this.entityTypes,
  }) : super._();
  @override
  SourceRelevanceAnalysisShared rebuild(
    void Function(SourceRelevanceAnalysisSharedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SourceRelevanceAnalysisSharedBuilder toBuilder() =>
      SourceRelevanceAnalysisSharedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceRelevanceAnalysisShared &&
        kinds == other.kinds &&
        entityTypes == other.entityTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, entityTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceRelevanceAnalysisShared')
          ..add('kinds', kinds)
          ..add('entityTypes', entityTypes))
        .toString();
  }
}

class SourceRelevanceAnalysisSharedBuilder
    implements
        Builder<
          SourceRelevanceAnalysisShared,
          SourceRelevanceAnalysisSharedBuilder
        > {
  _$SourceRelevanceAnalysisShared? _$v;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<String>? _entityTypes;
  ListBuilder<String> get entityTypes =>
      _$this._entityTypes ??= ListBuilder<String>();
  set entityTypes(ListBuilder<String>? entityTypes) =>
      _$this._entityTypes = entityTypes;

  SourceRelevanceAnalysisSharedBuilder() {
    SourceRelevanceAnalysisShared._defaults(this);
  }

  SourceRelevanceAnalysisSharedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinds = $v.kinds.toBuilder();
      _entityTypes = $v.entityTypes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceRelevanceAnalysisShared other) {
    _$v = other as _$SourceRelevanceAnalysisShared;
  }

  @override
  void update(void Function(SourceRelevanceAnalysisSharedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceRelevanceAnalysisShared build() => _build();

  _$SourceRelevanceAnalysisShared _build() {
    _$SourceRelevanceAnalysisShared _$result;
    try {
      _$result =
          _$v ??
          _$SourceRelevanceAnalysisShared._(
            kinds: kinds.build(),
            entityTypes: entityTypes.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kinds';
        kinds.build();
        _$failedField = 'entityTypes';
        entityTypes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SourceRelevanceAnalysisShared',
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
