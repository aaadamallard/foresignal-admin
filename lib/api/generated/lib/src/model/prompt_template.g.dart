// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PromptTemplate extends PromptTemplate {
  @override
  final String id;
  @override
  final String version;
  @override
  final String? role;
  @override
  final String sha256;
  @override
  final String text;
  @override
  final BuiltList<String>? versions;
  @override
  final String? instructions;

  factory _$PromptTemplate([void Function(PromptTemplateBuilder)? updates]) =>
      (PromptTemplateBuilder()..update(updates))._build();

  _$PromptTemplate._(
      {required this.id,
      required this.version,
      this.role,
      required this.sha256,
      required this.text,
      this.versions,
      this.instructions})
      : super._();
  @override
  PromptTemplate rebuild(void Function(PromptTemplateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PromptTemplateBuilder toBuilder() => PromptTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PromptTemplate &&
        id == other.id &&
        version == other.version &&
        role == other.role &&
        sha256 == other.sha256 &&
        text == other.text &&
        versions == other.versions &&
        instructions == other.instructions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, versions.hashCode);
    _$hash = $jc(_$hash, instructions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PromptTemplate')
          ..add('id', id)
          ..add('version', version)
          ..add('role', role)
          ..add('sha256', sha256)
          ..add('text', text)
          ..add('versions', versions)
          ..add('instructions', instructions))
        .toString();
  }
}

class PromptTemplateBuilder
    implements Builder<PromptTemplate, PromptTemplateBuilder> {
  _$PromptTemplate? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ListBuilder<String>? _versions;
  ListBuilder<String> get versions =>
      _$this._versions ??= ListBuilder<String>();
  set versions(ListBuilder<String>? versions) => _$this._versions = versions;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  PromptTemplateBuilder() {
    PromptTemplate._defaults(this);
  }

  PromptTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _version = $v.version;
      _role = $v.role;
      _sha256 = $v.sha256;
      _text = $v.text;
      _versions = $v.versions?.toBuilder();
      _instructions = $v.instructions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PromptTemplate other) {
    _$v = other as _$PromptTemplate;
  }

  @override
  void update(void Function(PromptTemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PromptTemplate build() => _build();

  _$PromptTemplate _build() {
    _$PromptTemplate _$result;
    try {
      _$result = _$v ??
          _$PromptTemplate._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PromptTemplate', 'id'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'PromptTemplate', 'version'),
            role: role,
            sha256: BuiltValueNullFieldError.checkNotNull(
                sha256, r'PromptTemplate', 'sha256'),
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'PromptTemplate', 'text'),
            versions: _versions?.build(),
            instructions: instructions,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versions';
        _versions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PromptTemplate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
