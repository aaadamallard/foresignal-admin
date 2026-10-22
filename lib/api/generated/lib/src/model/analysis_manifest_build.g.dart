// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_manifest_build.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisManifestBuild extends AnalysisManifestBuild {
  @override
  final String version;
  @override
  final String? gitCommit;

  factory _$AnalysisManifestBuild([
    void Function(AnalysisManifestBuildBuilder)? updates,
  ]) => (AnalysisManifestBuildBuilder()..update(updates))._build();

  _$AnalysisManifestBuild._({required this.version, this.gitCommit})
    : super._();
  @override
  AnalysisManifestBuild rebuild(
    void Function(AnalysisManifestBuildBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalysisManifestBuildBuilder toBuilder() =>
      AnalysisManifestBuildBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisManifestBuild &&
        version == other.version &&
        gitCommit == other.gitCommit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, gitCommit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisManifestBuild')
          ..add('version', version)
          ..add('gitCommit', gitCommit))
        .toString();
  }
}

class AnalysisManifestBuildBuilder
    implements Builder<AnalysisManifestBuild, AnalysisManifestBuildBuilder> {
  _$AnalysisManifestBuild? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _gitCommit;
  String? get gitCommit => _$this._gitCommit;
  set gitCommit(String? gitCommit) => _$this._gitCommit = gitCommit;

  AnalysisManifestBuildBuilder() {
    AnalysisManifestBuild._defaults(this);
  }

  AnalysisManifestBuildBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _gitCommit = $v.gitCommit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisManifestBuild other) {
    _$v = other as _$AnalysisManifestBuild;
  }

  @override
  void update(void Function(AnalysisManifestBuildBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisManifestBuild build() => _build();

  _$AnalysisManifestBuild _build() {
    final _$result =
        _$v ??
        _$AnalysisManifestBuild._(
          version: BuiltValueNullFieldError.checkNotNull(
            version,
            r'AnalysisManifestBuild',
            'version',
          ),
          gitCommit: gitCommit,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
