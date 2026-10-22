// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_manifest.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisManifest extends AnalysisManifest {
  @override
  final String id;
  @override
  final String component;
  @override
  final String componentVersion;
  @override
  final AnalysisManifestBuild build_;
  @override
  final BuiltMap<String, JsonObject?> config;
  @override
  final String configHash;
  @override
  final BuiltMap<String, String> registries;
  @override
  final int? asOfSeq;
  @override
  final AnalysisManifestInputs inputs;
  @override
  final AnalysisManifestModel? model;
  @override
  final String contentHash;
  @override
  final DateTime createdAt;

  factory _$AnalysisManifest([
    void Function(AnalysisManifestBuilder)? updates,
  ]) => (AnalysisManifestBuilder()..update(updates))._build();

  _$AnalysisManifest._({
    required this.id,
    required this.component,
    required this.componentVersion,
    required this.build_,
    required this.config,
    required this.configHash,
    required this.registries,
    this.asOfSeq,
    required this.inputs,
    this.model,
    required this.contentHash,
    required this.createdAt,
  }) : super._();
  @override
  AnalysisManifest rebuild(void Function(AnalysisManifestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisManifestBuilder toBuilder() =>
      AnalysisManifestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisManifest &&
        id == other.id &&
        component == other.component &&
        componentVersion == other.componentVersion &&
        build_ == other.build_ &&
        config == other.config &&
        configHash == other.configHash &&
        registries == other.registries &&
        asOfSeq == other.asOfSeq &&
        inputs == other.inputs &&
        model == other.model &&
        contentHash == other.contentHash &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, componentVersion.hashCode);
    _$hash = $jc(_$hash, build_.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, configHash.hashCode);
    _$hash = $jc(_$hash, registries.hashCode);
    _$hash = $jc(_$hash, asOfSeq.hashCode);
    _$hash = $jc(_$hash, inputs.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, contentHash.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisManifest')
          ..add('id', id)
          ..add('component', component)
          ..add('componentVersion', componentVersion)
          ..add('build_', build_)
          ..add('config', config)
          ..add('configHash', configHash)
          ..add('registries', registries)
          ..add('asOfSeq', asOfSeq)
          ..add('inputs', inputs)
          ..add('model', model)
          ..add('contentHash', contentHash)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class AnalysisManifestBuilder
    implements Builder<AnalysisManifest, AnalysisManifestBuilder> {
  _$AnalysisManifest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _component;
  String? get component => _$this._component;
  set component(String? component) => _$this._component = component;

  String? _componentVersion;
  String? get componentVersion => _$this._componentVersion;
  set componentVersion(String? componentVersion) =>
      _$this._componentVersion = componentVersion;

  AnalysisManifestBuildBuilder? _build_;
  AnalysisManifestBuildBuilder get build_ =>
      _$this._build_ ??= AnalysisManifestBuildBuilder();
  set build_(AnalysisManifestBuildBuilder? build_) => _$this._build_ = build_;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  String? _configHash;
  String? get configHash => _$this._configHash;
  set configHash(String? configHash) => _$this._configHash = configHash;

  MapBuilder<String, String>? _registries;
  MapBuilder<String, String> get registries =>
      _$this._registries ??= MapBuilder<String, String>();
  set registries(MapBuilder<String, String>? registries) =>
      _$this._registries = registries;

  int? _asOfSeq;
  int? get asOfSeq => _$this._asOfSeq;
  set asOfSeq(int? asOfSeq) => _$this._asOfSeq = asOfSeq;

  AnalysisManifestInputsBuilder? _inputs;
  AnalysisManifestInputsBuilder get inputs =>
      _$this._inputs ??= AnalysisManifestInputsBuilder();
  set inputs(AnalysisManifestInputsBuilder? inputs) => _$this._inputs = inputs;

  AnalysisManifestModelBuilder? _model;
  AnalysisManifestModelBuilder get model =>
      _$this._model ??= AnalysisManifestModelBuilder();
  set model(AnalysisManifestModelBuilder? model) => _$this._model = model;

  String? _contentHash;
  String? get contentHash => _$this._contentHash;
  set contentHash(String? contentHash) => _$this._contentHash = contentHash;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  AnalysisManifestBuilder() {
    AnalysisManifest._defaults(this);
  }

  AnalysisManifestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _component = $v.component;
      _componentVersion = $v.componentVersion;
      _build_ = $v.build_.toBuilder();
      _config = $v.config.toBuilder();
      _configHash = $v.configHash;
      _registries = $v.registries.toBuilder();
      _asOfSeq = $v.asOfSeq;
      _inputs = $v.inputs.toBuilder();
      _model = $v.model?.toBuilder();
      _contentHash = $v.contentHash;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisManifest other) {
    _$v = other as _$AnalysisManifest;
  }

  @override
  void update(void Function(AnalysisManifestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisManifest build() => _build();

  _$AnalysisManifest _build() {
    _$AnalysisManifest _$result;
    try {
      _$result =
          _$v ??
          _$AnalysisManifest._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'AnalysisManifest',
              'id',
            ),
            component: BuiltValueNullFieldError.checkNotNull(
              component,
              r'AnalysisManifest',
              'component',
            ),
            componentVersion: BuiltValueNullFieldError.checkNotNull(
              componentVersion,
              r'AnalysisManifest',
              'componentVersion',
            ),
            build_: build_.build(),
            config: config.build(),
            configHash: BuiltValueNullFieldError.checkNotNull(
              configHash,
              r'AnalysisManifest',
              'configHash',
            ),
            registries: registries.build(),
            asOfSeq: asOfSeq,
            inputs: inputs.build(),
            model: _model?.build(),
            contentHash: BuiltValueNullFieldError.checkNotNull(
              contentHash,
              r'AnalysisManifest',
              'contentHash',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'AnalysisManifest',
              'createdAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'build_';
        build_.build();
        _$failedField = 'config';
        config.build();

        _$failedField = 'registries';
        registries.build();

        _$failedField = 'inputs';
        inputs.build();
        _$failedField = 'model';
        _model?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalysisManifest',
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
