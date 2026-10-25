// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ArchiveSettingsTargetEnum _$archiveSettingsTargetEnum_local =
    const ArchiveSettingsTargetEnum._('local');
const ArchiveSettingsTargetEnum _$archiveSettingsTargetEnum_s3 =
    const ArchiveSettingsTargetEnum._('s3');
const ArchiveSettingsTargetEnum
_$archiveSettingsTargetEnum_unknownDefaultOpenApi =
    const ArchiveSettingsTargetEnum._('unknownDefaultOpenApi');

ArchiveSettingsTargetEnum _$archiveSettingsTargetEnumValueOf(String name) {
  switch (name) {
    case 'local':
      return _$archiveSettingsTargetEnum_local;
    case 's3':
      return _$archiveSettingsTargetEnum_s3;
    case 'unknownDefaultOpenApi':
      return _$archiveSettingsTargetEnum_unknownDefaultOpenApi;
    default:
      return _$archiveSettingsTargetEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ArchiveSettingsTargetEnum> _$archiveSettingsTargetEnumValues =
    BuiltSet<ArchiveSettingsTargetEnum>(const <ArchiveSettingsTargetEnum>[
      _$archiveSettingsTargetEnum_local,
      _$archiveSettingsTargetEnum_s3,
      _$archiveSettingsTargetEnum_unknownDefaultOpenApi,
    ]);

Serializer<ArchiveSettingsTargetEnum> _$archiveSettingsTargetEnumSerializer =
    _$ArchiveSettingsTargetEnumSerializer();

class _$ArchiveSettingsTargetEnumSerializer
    implements PrimitiveSerializer<ArchiveSettingsTargetEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'local': 'local',
    's3': 's3',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'local': 'local',
    's3': 's3',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ArchiveSettingsTargetEnum];
  @override
  final String wireName = 'ArchiveSettingsTargetEnum';

  @override
  Object serialize(
    Serializers serializers,
    ArchiveSettingsTargetEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ArchiveSettingsTargetEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ArchiveSettingsTargetEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ArchiveSettings extends ArchiveSettings {
  @override
  final bool enabled;
  @override
  final BuiltList<String>? sources;
  @override
  final String? root;
  @override
  final ArchiveSettingsTargetEnum target;
  @override
  final ArchiveSettingsS3? s3;
  @override
  final ArchiveSettingsSecrets? secrets;
  @override
  final BuiltList<String>? secretsSet;
  @override
  final bool? keepLocal;

  factory _$ArchiveSettings([void Function(ArchiveSettingsBuilder)? updates]) =>
      (ArchiveSettingsBuilder()..update(updates))._build();

  _$ArchiveSettings._({
    required this.enabled,
    this.sources,
    this.root,
    required this.target,
    this.s3,
    this.secrets,
    this.secretsSet,
    this.keepLocal,
  }) : super._();
  @override
  ArchiveSettings rebuild(void Function(ArchiveSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchiveSettingsBuilder toBuilder() => ArchiveSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchiveSettings &&
        enabled == other.enabled &&
        sources == other.sources &&
        root == other.root &&
        target == other.target &&
        s3 == other.s3 &&
        secrets == other.secrets &&
        secretsSet == other.secretsSet &&
        keepLocal == other.keepLocal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, root.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, s3.hashCode);
    _$hash = $jc(_$hash, secrets.hashCode);
    _$hash = $jc(_$hash, secretsSet.hashCode);
    _$hash = $jc(_$hash, keepLocal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArchiveSettings')
          ..add('enabled', enabled)
          ..add('sources', sources)
          ..add('root', root)
          ..add('target', target)
          ..add('s3', s3)
          ..add('secrets', secrets)
          ..add('secretsSet', secretsSet)
          ..add('keepLocal', keepLocal))
        .toString();
  }
}

class ArchiveSettingsBuilder
    implements Builder<ArchiveSettings, ArchiveSettingsBuilder> {
  _$ArchiveSettings? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  String? _root;
  String? get root => _$this._root;
  set root(String? root) => _$this._root = root;

  ArchiveSettingsTargetEnum? _target;
  ArchiveSettingsTargetEnum? get target => _$this._target;
  set target(ArchiveSettingsTargetEnum? target) => _$this._target = target;

  ArchiveSettingsS3Builder? _s3;
  ArchiveSettingsS3Builder get s3 => _$this._s3 ??= ArchiveSettingsS3Builder();
  set s3(ArchiveSettingsS3Builder? s3) => _$this._s3 = s3;

  ArchiveSettingsSecretsBuilder? _secrets;
  ArchiveSettingsSecretsBuilder get secrets =>
      _$this._secrets ??= ArchiveSettingsSecretsBuilder();
  set secrets(ArchiveSettingsSecretsBuilder? secrets) =>
      _$this._secrets = secrets;

  ListBuilder<String>? _secretsSet;
  ListBuilder<String> get secretsSet =>
      _$this._secretsSet ??= ListBuilder<String>();
  set secretsSet(ListBuilder<String>? secretsSet) =>
      _$this._secretsSet = secretsSet;

  bool? _keepLocal;
  bool? get keepLocal => _$this._keepLocal;
  set keepLocal(bool? keepLocal) => _$this._keepLocal = keepLocal;

  ArchiveSettingsBuilder() {
    ArchiveSettings._defaults(this);
  }

  ArchiveSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _sources = $v.sources?.toBuilder();
      _root = $v.root;
      _target = $v.target;
      _s3 = $v.s3?.toBuilder();
      _secrets = $v.secrets?.toBuilder();
      _secretsSet = $v.secretsSet?.toBuilder();
      _keepLocal = $v.keepLocal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchiveSettings other) {
    _$v = other as _$ArchiveSettings;
  }

  @override
  void update(void Function(ArchiveSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchiveSettings build() => _build();

  _$ArchiveSettings _build() {
    _$ArchiveSettings _$result;
    try {
      _$result =
          _$v ??
          _$ArchiveSettings._(
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'ArchiveSettings',
              'enabled',
            ),
            sources: _sources?.build(),
            root: root,
            target: BuiltValueNullFieldError.checkNotNull(
              target,
              r'ArchiveSettings',
              'target',
            ),
            s3: _s3?.build(),
            secrets: _secrets?.build(),
            secretsSet: _secretsSet?.build(),
            keepLocal: keepLocal,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();

        _$failedField = 's3';
        _s3?.build();
        _$failedField = 'secrets';
        _secrets?.build();
        _$failedField = 'secretsSet';
        _secretsSet?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ArchiveSettings',
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
