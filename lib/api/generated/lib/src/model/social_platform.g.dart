// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_platform.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialPlatformStateEnum _$socialPlatformStateEnum_enabled =
    const SocialPlatformStateEnum._('enabled');
const SocialPlatformStateEnum _$socialPlatformStateEnum_disabled =
    const SocialPlatformStateEnum._('disabled');
const SocialPlatformStateEnum _$socialPlatformStateEnum_degraded =
    const SocialPlatformStateEnum._('degraded');
const SocialPlatformStateEnum _$socialPlatformStateEnum_budgetExhausted =
    const SocialPlatformStateEnum._('budgetExhausted');
const SocialPlatformStateEnum _$socialPlatformStateEnum_credentialsRequired =
    const SocialPlatformStateEnum._('credentialsRequired');
const SocialPlatformStateEnum _$socialPlatformStateEnum_unavailable =
    const SocialPlatformStateEnum._('unavailable');

SocialPlatformStateEnum _$socialPlatformStateEnumValueOf(String name) {
  switch (name) {
    case 'enabled':
      return _$socialPlatformStateEnum_enabled;
    case 'disabled':
      return _$socialPlatformStateEnum_disabled;
    case 'degraded':
      return _$socialPlatformStateEnum_degraded;
    case 'budgetExhausted':
      return _$socialPlatformStateEnum_budgetExhausted;
    case 'credentialsRequired':
      return _$socialPlatformStateEnum_credentialsRequired;
    case 'unavailable':
      return _$socialPlatformStateEnum_unavailable;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialPlatformStateEnum> _$socialPlatformStateEnumValues =
    BuiltSet<SocialPlatformStateEnum>(const <SocialPlatformStateEnum>[
      _$socialPlatformStateEnum_enabled,
      _$socialPlatformStateEnum_disabled,
      _$socialPlatformStateEnum_degraded,
      _$socialPlatformStateEnum_budgetExhausted,
      _$socialPlatformStateEnum_credentialsRequired,
      _$socialPlatformStateEnum_unavailable,
    ]);

Serializer<SocialPlatformStateEnum> _$socialPlatformStateEnumSerializer =
    _$SocialPlatformStateEnumSerializer();

class _$SocialPlatformStateEnumSerializer
    implements PrimitiveSerializer<SocialPlatformStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'enabled': 'enabled',
    'disabled': 'disabled',
    'degraded': 'degraded',
    'budgetExhausted': 'budget-exhausted',
    'credentialsRequired': 'credentials-required',
    'unavailable': 'unavailable',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'enabled': 'enabled',
    'disabled': 'disabled',
    'degraded': 'degraded',
    'budget-exhausted': 'budgetExhausted',
    'credentials-required': 'credentialsRequired',
    'unavailable': 'unavailable',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialPlatformStateEnum];
  @override
  final String wireName = 'SocialPlatformStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialPlatformStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialPlatformStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialPlatformStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialPlatform extends SocialPlatform {
  @override
  final SocialPlatformId id;
  @override
  final String network;
  @override
  final String name;
  @override
  final SocialPlatformStateEnum state;
  @override
  final String? stateReason;
  @override
  final bool? defaultEnabled;
  @override
  final String? type;
  @override
  final String? mode;
  @override
  final BuiltList<SocialCollectionPath> paths;
  @override
  final SocialPlatformCredentials credentials;
  @override
  final SourceHealth? health;
  @override
  final SocialPlatformStream? stream;
  @override
  final BuiltList<SocialQuota>? quotas;
  @override
  final SocialSpend? spend;
  @override
  final SocialPlatformDeletionSync? deletionSync;
  @override
  final SocialPlatformTerms? terms;
  @override
  final SocialPlatformSettings settings;
  @override
  final DateTime? updatedAt;

  factory _$SocialPlatform([void Function(SocialPlatformBuilder)? updates]) =>
      (SocialPlatformBuilder()..update(updates))._build();

  _$SocialPlatform._({
    required this.id,
    required this.network,
    required this.name,
    required this.state,
    this.stateReason,
    this.defaultEnabled,
    this.type,
    this.mode,
    required this.paths,
    required this.credentials,
    this.health,
    this.stream,
    this.quotas,
    this.spend,
    this.deletionSync,
    this.terms,
    required this.settings,
    this.updatedAt,
  }) : super._();
  @override
  SocialPlatform rebuild(void Function(SocialPlatformBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialPlatformBuilder toBuilder() => SocialPlatformBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPlatform &&
        id == other.id &&
        network == other.network &&
        name == other.name &&
        state == other.state &&
        stateReason == other.stateReason &&
        defaultEnabled == other.defaultEnabled &&
        type == other.type &&
        mode == other.mode &&
        paths == other.paths &&
        credentials == other.credentials &&
        health == other.health &&
        stream == other.stream &&
        quotas == other.quotas &&
        spend == other.spend &&
        deletionSync == other.deletionSync &&
        terms == other.terms &&
        settings == other.settings &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, network.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateReason.hashCode);
    _$hash = $jc(_$hash, defaultEnabled.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, paths.hashCode);
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, health.hashCode);
    _$hash = $jc(_$hash, stream.hashCode);
    _$hash = $jc(_$hash, quotas.hashCode);
    _$hash = $jc(_$hash, spend.hashCode);
    _$hash = $jc(_$hash, deletionSync.hashCode);
    _$hash = $jc(_$hash, terms.hashCode);
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPlatform')
          ..add('id', id)
          ..add('network', network)
          ..add('name', name)
          ..add('state', state)
          ..add('stateReason', stateReason)
          ..add('defaultEnabled', defaultEnabled)
          ..add('type', type)
          ..add('mode', mode)
          ..add('paths', paths)
          ..add('credentials', credentials)
          ..add('health', health)
          ..add('stream', stream)
          ..add('quotas', quotas)
          ..add('spend', spend)
          ..add('deletionSync', deletionSync)
          ..add('terms', terms)
          ..add('settings', settings)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SocialPlatformBuilder
    implements Builder<SocialPlatform, SocialPlatformBuilder> {
  _$SocialPlatform? _$v;

  SocialPlatformId? _id;
  SocialPlatformId? get id => _$this._id;
  set id(SocialPlatformId? id) => _$this._id = id;

  String? _network;
  String? get network => _$this._network;
  set network(String? network) => _$this._network = network;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  SocialPlatformStateEnum? _state;
  SocialPlatformStateEnum? get state => _$this._state;
  set state(SocialPlatformStateEnum? state) => _$this._state = state;

  String? _stateReason;
  String? get stateReason => _$this._stateReason;
  set stateReason(String? stateReason) => _$this._stateReason = stateReason;

  bool? _defaultEnabled;
  bool? get defaultEnabled => _$this._defaultEnabled;
  set defaultEnabled(bool? defaultEnabled) =>
      _$this._defaultEnabled = defaultEnabled;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _mode;
  String? get mode => _$this._mode;
  set mode(String? mode) => _$this._mode = mode;

  ListBuilder<SocialCollectionPath>? _paths;
  ListBuilder<SocialCollectionPath> get paths =>
      _$this._paths ??= ListBuilder<SocialCollectionPath>();
  set paths(ListBuilder<SocialCollectionPath>? paths) => _$this._paths = paths;

  SocialPlatformCredentialsBuilder? _credentials;
  SocialPlatformCredentialsBuilder get credentials =>
      _$this._credentials ??= SocialPlatformCredentialsBuilder();
  set credentials(SocialPlatformCredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  SourceHealthBuilder? _health;
  SourceHealthBuilder get health => _$this._health ??= SourceHealthBuilder();
  set health(SourceHealthBuilder? health) => _$this._health = health;

  SocialPlatformStreamBuilder? _stream;
  SocialPlatformStreamBuilder get stream =>
      _$this._stream ??= SocialPlatformStreamBuilder();
  set stream(SocialPlatformStreamBuilder? stream) => _$this._stream = stream;

  ListBuilder<SocialQuota>? _quotas;
  ListBuilder<SocialQuota> get quotas =>
      _$this._quotas ??= ListBuilder<SocialQuota>();
  set quotas(ListBuilder<SocialQuota>? quotas) => _$this._quotas = quotas;

  SocialSpendBuilder? _spend;
  SocialSpendBuilder get spend => _$this._spend ??= SocialSpendBuilder();
  set spend(SocialSpendBuilder? spend) => _$this._spend = spend;

  SocialPlatformDeletionSyncBuilder? _deletionSync;
  SocialPlatformDeletionSyncBuilder get deletionSync =>
      _$this._deletionSync ??= SocialPlatformDeletionSyncBuilder();
  set deletionSync(SocialPlatformDeletionSyncBuilder? deletionSync) =>
      _$this._deletionSync = deletionSync;

  SocialPlatformTermsBuilder? _terms;
  SocialPlatformTermsBuilder get terms =>
      _$this._terms ??= SocialPlatformTermsBuilder();
  set terms(SocialPlatformTermsBuilder? terms) => _$this._terms = terms;

  SocialPlatformSettingsBuilder? _settings;
  SocialPlatformSettingsBuilder get settings =>
      _$this._settings ??= SocialPlatformSettingsBuilder();
  set settings(SocialPlatformSettingsBuilder? settings) =>
      _$this._settings = settings;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SocialPlatformBuilder() {
    SocialPlatform._defaults(this);
  }

  SocialPlatformBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _network = $v.network;
      _name = $v.name;
      _state = $v.state;
      _stateReason = $v.stateReason;
      _defaultEnabled = $v.defaultEnabled;
      _type = $v.type;
      _mode = $v.mode;
      _paths = $v.paths.toBuilder();
      _credentials = $v.credentials.toBuilder();
      _health = $v.health?.toBuilder();
      _stream = $v.stream?.toBuilder();
      _quotas = $v.quotas?.toBuilder();
      _spend = $v.spend?.toBuilder();
      _deletionSync = $v.deletionSync?.toBuilder();
      _terms = $v.terms?.toBuilder();
      _settings = $v.settings.toBuilder();
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPlatform other) {
    _$v = other as _$SocialPlatform;
  }

  @override
  void update(void Function(SocialPlatformBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPlatform build() => _build();

  _$SocialPlatform _build() {
    _$SocialPlatform _$result;
    try {
      _$result =
          _$v ??
          _$SocialPlatform._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'SocialPlatform',
              'id',
            ),
            network: BuiltValueNullFieldError.checkNotNull(
              network,
              r'SocialPlatform',
              'network',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'SocialPlatform',
              'name',
            ),
            state: BuiltValueNullFieldError.checkNotNull(
              state,
              r'SocialPlatform',
              'state',
            ),
            stateReason: stateReason,
            defaultEnabled: defaultEnabled,
            type: type,
            mode: mode,
            paths: paths.build(),
            credentials: credentials.build(),
            health: _health?.build(),
            stream: _stream?.build(),
            quotas: _quotas?.build(),
            spend: _spend?.build(),
            deletionSync: _deletionSync?.build(),
            terms: _terms?.build(),
            settings: settings.build(),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'paths';
        paths.build();
        _$failedField = 'credentials';
        credentials.build();
        _$failedField = 'health';
        _health?.build();
        _$failedField = 'stream';
        _stream?.build();
        _$failedField = 'quotas';
        _quotas?.build();
        _$failedField = 'spend';
        _spend?.build();
        _$failedField = 'deletionSync';
        _deletionSync?.build();
        _$failedField = 'terms';
        _terms?.build();
        _$failedField = 'settings';
        settings.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SocialPlatform',
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
