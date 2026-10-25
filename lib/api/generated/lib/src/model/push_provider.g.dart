// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_provider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PushProviderTypeEnum _$pushProviderTypeEnum_apns =
    const PushProviderTypeEnum._('apns');
const PushProviderTypeEnum _$pushProviderTypeEnum_fcm =
    const PushProviderTypeEnum._('fcm');
const PushProviderTypeEnum _$pushProviderTypeEnum_unknownDefaultOpenApi =
    const PushProviderTypeEnum._('unknownDefaultOpenApi');

PushProviderTypeEnum _$pushProviderTypeEnumValueOf(String name) {
  switch (name) {
    case 'apns':
      return _$pushProviderTypeEnum_apns;
    case 'fcm':
      return _$pushProviderTypeEnum_fcm;
    case 'unknownDefaultOpenApi':
      return _$pushProviderTypeEnum_unknownDefaultOpenApi;
    default:
      return _$pushProviderTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushProviderTypeEnum> _$pushProviderTypeEnumValues =
    BuiltSet<PushProviderTypeEnum>(const <PushProviderTypeEnum>[
      _$pushProviderTypeEnum_apns,
      _$pushProviderTypeEnum_fcm,
      _$pushProviderTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<PushProviderTypeEnum> _$pushProviderTypeEnumSerializer =
    _$PushProviderTypeEnumSerializer();

class _$PushProviderTypeEnumSerializer
    implements PrimitiveSerializer<PushProviderTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'apns': 'apns',
    'fcm': 'fcm',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'apns': 'apns',
    'fcm': 'fcm',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PushProviderTypeEnum];
  @override
  final String wireName = 'PushProviderTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushProviderTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushProviderTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushProviderTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushProvider extends PushProvider {
  @override
  final String id;
  @override
  final PushProviderTypeEnum type;
  @override
  final BuiltList<String> appIds;
  @override
  final PushProviderInputConfig config;
  @override
  final BuiltList<String>? secretFields;
  @override
  final bool enabled;
  @override
  final DateTime? lastTestAt;
  @override
  final String? lastError;
  @override
  final DateTime? updatedAt;

  factory _$PushProvider([void Function(PushProviderBuilder)? updates]) =>
      (PushProviderBuilder()..update(updates))._build();

  _$PushProvider._({
    required this.id,
    required this.type,
    required this.appIds,
    required this.config,
    this.secretFields,
    required this.enabled,
    this.lastTestAt,
    this.lastError,
    this.updatedAt,
  }) : super._();
  @override
  PushProvider rebuild(void Function(PushProviderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushProviderBuilder toBuilder() => PushProviderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushProvider &&
        id == other.id &&
        type == other.type &&
        appIds == other.appIds &&
        config == other.config &&
        secretFields == other.secretFields &&
        enabled == other.enabled &&
        lastTestAt == other.lastTestAt &&
        lastError == other.lastError &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, appIds.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, secretFields.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, lastTestAt.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushProvider')
          ..add('id', id)
          ..add('type', type)
          ..add('appIds', appIds)
          ..add('config', config)
          ..add('secretFields', secretFields)
          ..add('enabled', enabled)
          ..add('lastTestAt', lastTestAt)
          ..add('lastError', lastError)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PushProviderBuilder
    implements Builder<PushProvider, PushProviderBuilder> {
  _$PushProvider? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  PushProviderTypeEnum? _type;
  PushProviderTypeEnum? get type => _$this._type;
  set type(PushProviderTypeEnum? type) => _$this._type = type;

  ListBuilder<String>? _appIds;
  ListBuilder<String> get appIds => _$this._appIds ??= ListBuilder<String>();
  set appIds(ListBuilder<String>? appIds) => _$this._appIds = appIds;

  PushProviderInputConfigBuilder? _config;
  PushProviderInputConfigBuilder get config =>
      _$this._config ??= PushProviderInputConfigBuilder();
  set config(PushProviderInputConfigBuilder? config) => _$this._config = config;

  ListBuilder<String>? _secretFields;
  ListBuilder<String> get secretFields =>
      _$this._secretFields ??= ListBuilder<String>();
  set secretFields(ListBuilder<String>? secretFields) =>
      _$this._secretFields = secretFields;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  DateTime? _lastTestAt;
  DateTime? get lastTestAt => _$this._lastTestAt;
  set lastTestAt(DateTime? lastTestAt) => _$this._lastTestAt = lastTestAt;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PushProviderBuilder() {
    PushProvider._defaults(this);
  }

  PushProviderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _appIds = $v.appIds.toBuilder();
      _config = $v.config.toBuilder();
      _secretFields = $v.secretFields?.toBuilder();
      _enabled = $v.enabled;
      _lastTestAt = $v.lastTestAt;
      _lastError = $v.lastError;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushProvider other) {
    _$v = other as _$PushProvider;
  }

  @override
  void update(void Function(PushProviderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushProvider build() => _build();

  _$PushProvider _build() {
    _$PushProvider _$result;
    try {
      _$result =
          _$v ??
          _$PushProvider._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'PushProvider',
              'id',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'PushProvider',
              'type',
            ),
            appIds: appIds.build(),
            config: config.build(),
            secretFields: _secretFields?.build(),
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'PushProvider',
              'enabled',
            ),
            lastTestAt: lastTestAt,
            lastError: lastError,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'appIds';
        appIds.build();
        _$failedField = 'config';
        config.build();
        _$failedField = 'secretFields';
        _secretFields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PushProvider',
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
