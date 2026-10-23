// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_template_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PromptTemplateSummary extends PromptTemplateSummary {
  @override
  final String id;
  @override
  final String? role;
  @override
  final String version;
  @override
  final BuiltList<String> versions;

  factory _$PromptTemplateSummary([
    void Function(PromptTemplateSummaryBuilder)? updates,
  ]) => (PromptTemplateSummaryBuilder()..update(updates))._build();

  _$PromptTemplateSummary._({
    required this.id,
    this.role,
    required this.version,
    required this.versions,
  }) : super._();
  @override
  PromptTemplateSummary rebuild(
    void Function(PromptTemplateSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PromptTemplateSummaryBuilder toBuilder() =>
      PromptTemplateSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PromptTemplateSummary &&
        id == other.id &&
        role == other.role &&
        version == other.version &&
        versions == other.versions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, versions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PromptTemplateSummary')
          ..add('id', id)
          ..add('role', role)
          ..add('version', version)
          ..add('versions', versions))
        .toString();
  }
}

class PromptTemplateSummaryBuilder
    implements Builder<PromptTemplateSummary, PromptTemplateSummaryBuilder> {
  _$PromptTemplateSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  ListBuilder<String>? _versions;
  ListBuilder<String> get versions =>
      _$this._versions ??= ListBuilder<String>();
  set versions(ListBuilder<String>? versions) => _$this._versions = versions;

  PromptTemplateSummaryBuilder() {
    PromptTemplateSummary._defaults(this);
  }

  PromptTemplateSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _role = $v.role;
      _version = $v.version;
      _versions = $v.versions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PromptTemplateSummary other) {
    _$v = other as _$PromptTemplateSummary;
  }

  @override
  void update(void Function(PromptTemplateSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PromptTemplateSummary build() => _build();

  _$PromptTemplateSummary _build() {
    _$PromptTemplateSummary _$result;
    try {
      _$result =
          _$v ??
          _$PromptTemplateSummary._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'PromptTemplateSummary',
              'id',
            ),
            role: role,
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'PromptTemplateSummary',
              'version',
            ),
            versions: versions.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versions';
        versions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PromptTemplateSummary',
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
