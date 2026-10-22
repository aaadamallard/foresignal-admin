// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_provider_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PushProviderInputTypeEnum _$pushProviderInputTypeEnum_apns =
    const PushProviderInputTypeEnum._('apns');
const PushProviderInputTypeEnum _$pushProviderInputTypeEnum_fcm =
    const PushProviderInputTypeEnum._('fcm');

PushProviderInputTypeEnum _$pushProviderInputTypeEnumValueOf(String name) {
  switch (name) {
    case 'apns':
      return _$pushProviderInputTypeEnum_apns;
    case 'fcm':
      return _$pushProviderInputTypeEnum_fcm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PushProviderInputTypeEnum> _$pushProviderInputTypeEnumValues =
    BuiltSet<PushProviderInputTypeEnum>(const <PushProviderInputTypeEnum>[
      _$pushProviderInputTypeEnum_apns,
      _$pushProviderInputTypeEnum_fcm,
    ]);

Serializer<PushProviderInputTypeEnum> _$pushProviderInputTypeEnumSerializer =
    _$PushProviderInputTypeEnumSerializer();

class _$PushProviderInputTypeEnumSerializer
    implements PrimitiveSerializer<PushProviderInputTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'apns': 'apns',
    'fcm': 'fcm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'apns': 'apns',
    'fcm': 'fcm',
  };

  @override
  final Iterable<Type> types = const <Type>[PushProviderInputTypeEnum];
  @override
  final String wireName = 'PushProviderInputTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushProviderInputTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushProviderInputTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushProviderInputTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushProviderInput extends PushProviderInput {
  @override
  final PushProviderInputTypeEnum type;
  @override
  final BuiltList<String> appIds;
  @override
  final PushProviderInputConfig config;
  @override
  final PushProviderInputSecrets? secrets;
  @override
  final bool? enabled;

  factory _$PushProviderInput([
    void Function(PushProviderInputBuilder)? updates,
  ]) => (PushProviderInputBuilder()..update(updates))._build();

  _$PushProviderInput._({
    required this.type,
    required this.appIds,
    required this.config,
    this.secrets,
    this.enabled,
  }) : super._();
  @override
  PushProviderInput rebuild(void Function(PushProviderInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushProviderInputBuilder toBuilder() =>
      PushProviderInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushProviderInput &&
        type == other.type &&
        appIds == other.appIds &&
        config == other.config &&
        secrets == other.secrets &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, appIds.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, secrets.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushProviderInput')
          ..add('type', type)
          ..add('appIds', appIds)
          ..add('config', config)
          ..add('secrets', secrets)
          ..add('enabled', enabled))
        .toString();
  }
}

class PushProviderInputBuilder
    implements Builder<PushProviderInput, PushProviderInputBuilder> {
  _$PushProviderInput? _$v;

  PushProviderInputTypeEnum? _type;
  PushProviderInputTypeEnum? get type => _$this._type;
  set type(PushProviderInputTypeEnum? type) => _$this._type = type;

  ListBuilder<String>? _appIds;
  ListBuilder<String> get appIds => _$this._appIds ??= ListBuilder<String>();
  set appIds(ListBuilder<String>? appIds) => _$this._appIds = appIds;

  PushProviderInputConfigBuilder? _config;
  PushProviderInputConfigBuilder get config =>
      _$this._config ??= PushProviderInputConfigBuilder();
  set config(PushProviderInputConfigBuilder? config) => _$this._config = config;

  PushProviderInputSecretsBuilder? _secrets;
  PushProviderInputSecretsBuilder get secrets =>
      _$this._secrets ??= PushProviderInputSecretsBuilder();
  set secrets(PushProviderInputSecretsBuilder? secrets) =>
      _$this._secrets = secrets;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  PushProviderInputBuilder() {
    PushProviderInput._defaults(this);
  }

  PushProviderInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _appIds = $v.appIds.toBuilder();
      _config = $v.config.toBuilder();
      _secrets = $v.secrets?.toBuilder();
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushProviderInput other) {
    _$v = other as _$PushProviderInput;
  }

  @override
  void update(void Function(PushProviderInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushProviderInput build() => _build();

  _$PushProviderInput _build() {
    _$PushProviderInput _$result;
    try {
      _$result =
          _$v ??
          _$PushProviderInput._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'PushProviderInput',
              'type',
            ),
            appIds: appIds.build(),
            config: config.build(),
            secrets: _secrets?.build(),
            enabled: enabled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'appIds';
        appIds.build();
        _$failedField = 'config';
        config.build();
        _$failedField = 'secrets';
        _secrets?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PushProviderInput',
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
