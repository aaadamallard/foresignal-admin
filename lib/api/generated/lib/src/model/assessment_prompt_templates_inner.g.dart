// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_prompt_templates_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssessmentPromptTemplatesInner extends AssessmentPromptTemplatesInner {
  @override
  final String id;
  @override
  final String version;

  factory _$AssessmentPromptTemplatesInner(
          [void Function(AssessmentPromptTemplatesInnerBuilder)? updates]) =>
      (AssessmentPromptTemplatesInnerBuilder()..update(updates))._build();

  _$AssessmentPromptTemplatesInner._({required this.id, required this.version})
      : super._();
  @override
  AssessmentPromptTemplatesInner rebuild(
          void Function(AssessmentPromptTemplatesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssessmentPromptTemplatesInnerBuilder toBuilder() =>
      AssessmentPromptTemplatesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssessmentPromptTemplatesInner &&
        id == other.id &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssessmentPromptTemplatesInner')
          ..add('id', id)
          ..add('version', version))
        .toString();
  }
}

class AssessmentPromptTemplatesInnerBuilder
    implements
        Builder<AssessmentPromptTemplatesInner,
            AssessmentPromptTemplatesInnerBuilder> {
  _$AssessmentPromptTemplatesInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  AssessmentPromptTemplatesInnerBuilder() {
    AssessmentPromptTemplatesInner._defaults(this);
  }

  AssessmentPromptTemplatesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssessmentPromptTemplatesInner other) {
    _$v = other as _$AssessmentPromptTemplatesInner;
  }

  @override
  void update(void Function(AssessmentPromptTemplatesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssessmentPromptTemplatesInner build() => _build();

  _$AssessmentPromptTemplatesInner _build() {
    final _$result = _$v ??
        _$AssessmentPromptTemplatesInner._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AssessmentPromptTemplatesInner', 'id'),
          version: BuiltValueNullFieldError.checkNotNull(
              version, r'AssessmentPromptTemplatesInner', 'version'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
