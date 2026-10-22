// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExternalSourceStateEnum _$externalSourceStateEnum_pending =
    const ExternalSourceStateEnum._('pending');
const ExternalSourceStateEnum _$externalSourceStateEnum_active =
    const ExternalSourceStateEnum._('active');
const ExternalSourceStateEnum _$externalSourceStateEnum_suspended =
    const ExternalSourceStateEnum._('suspended');

ExternalSourceStateEnum _$externalSourceStateEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$externalSourceStateEnum_pending;
    case 'active':
      return _$externalSourceStateEnum_active;
    case 'suspended':
      return _$externalSourceStateEnum_suspended;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExternalSourceStateEnum> _$externalSourceStateEnumValues =
    BuiltSet<ExternalSourceStateEnum>(const <ExternalSourceStateEnum>[
  _$externalSourceStateEnum_pending,
  _$externalSourceStateEnum_active,
  _$externalSourceStateEnum_suspended,
]);

const ExternalSourceRegisteredViaEnum
    _$externalSourceRegisteredViaEnum_operator_ =
    const ExternalSourceRegisteredViaEnum._('operator_');
const ExternalSourceRegisteredViaEnum
    _$externalSourceRegisteredViaEnum_registrationToken =
    const ExternalSourceRegisteredViaEnum._('registrationToken');

ExternalSourceRegisteredViaEnum _$externalSourceRegisteredViaEnumValueOf(
    String name) {
  switch (name) {
    case 'operator_':
      return _$externalSourceRegisteredViaEnum_operator_;
    case 'registrationToken':
      return _$externalSourceRegisteredViaEnum_registrationToken;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExternalSourceRegisteredViaEnum>
    _$externalSourceRegisteredViaEnumValues = BuiltSet<
        ExternalSourceRegisteredViaEnum>(const <ExternalSourceRegisteredViaEnum>[
  _$externalSourceRegisteredViaEnum_operator_,
  _$externalSourceRegisteredViaEnum_registrationToken,
]);

Serializer<ExternalSourceStateEnum> _$externalSourceStateEnumSerializer =
    _$ExternalSourceStateEnumSerializer();
Serializer<ExternalSourceRegisteredViaEnum>
    _$externalSourceRegisteredViaEnumSerializer =
    _$ExternalSourceRegisteredViaEnumSerializer();

class _$ExternalSourceStateEnumSerializer
    implements PrimitiveSerializer<ExternalSourceStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'active': 'active',
    'suspended': 'suspended',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'active': 'active',
    'suspended': 'suspended',
  };

  @override
  final Iterable<Type> types = const <Type>[ExternalSourceStateEnum];
  @override
  final String wireName = 'ExternalSourceStateEnum';

  @override
  Object serialize(Serializers serializers, ExternalSourceStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExternalSourceStateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExternalSourceStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExternalSourceRegisteredViaEnumSerializer
    implements PrimitiveSerializer<ExternalSourceRegisteredViaEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'operator_': 'operator',
    'registrationToken': 'registration-token',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'operator': 'operator_',
    'registration-token': 'registrationToken',
  };

  @override
  final Iterable<Type> types = const <Type>[ExternalSourceRegisteredViaEnum];
  @override
  final String wireName = 'ExternalSourceRegisteredViaEnum';

  @override
  Object serialize(
          Serializers serializers, ExternalSourceRegisteredViaEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExternalSourceRegisteredViaEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExternalSourceRegisteredViaEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExternalSource extends ExternalSource {
  @override
  final String sourceId;
  @override
  final ExternalSourceStateEnum state;
  @override
  final ExternalSourceRegisteredViaEnum? registeredVia;
  @override
  final EdpManifest manifest;
  @override
  final String? manifestSha256;
  @override
  final SourceAccess? access;
  @override
  final String? egress;
  @override
  final String? approvedBy;
  @override
  final DateTime? approvedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastItemAt;
  @override
  final ExternalSourcePull? pull;
  @override
  final BuiltList<ExternalStreamStats>? streams;
  @override
  final BuiltList<EdpItemRejection>? lastValidationErrors;
  @override
  final String? health;
  @override
  final bool? allowPrivateNetwork;
  @override
  final BuiltMap<String, EdpPresentation>? presentation;
  @override
  final BuiltList<String>? breakingChanges;

  factory _$ExternalSource([void Function(ExternalSourceBuilder)? updates]) =>
      (ExternalSourceBuilder()..update(updates))._build();

  _$ExternalSource._(
      {required this.sourceId,
      required this.state,
      this.registeredVia,
      required this.manifest,
      this.manifestSha256,
      this.access,
      this.egress,
      this.approvedBy,
      this.approvedAt,
      required this.createdAt,
      this.lastItemAt,
      this.pull,
      this.streams,
      this.lastValidationErrors,
      this.health,
      this.allowPrivateNetwork,
      this.presentation,
      this.breakingChanges})
      : super._();
  @override
  ExternalSource rebuild(void Function(ExternalSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalSourceBuilder toBuilder() => ExternalSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalSource &&
        sourceId == other.sourceId &&
        state == other.state &&
        registeredVia == other.registeredVia &&
        manifest == other.manifest &&
        manifestSha256 == other.manifestSha256 &&
        access == other.access &&
        egress == other.egress &&
        approvedBy == other.approvedBy &&
        approvedAt == other.approvedAt &&
        createdAt == other.createdAt &&
        lastItemAt == other.lastItemAt &&
        pull == other.pull &&
        streams == other.streams &&
        lastValidationErrors == other.lastValidationErrors &&
        health == other.health &&
        allowPrivateNetwork == other.allowPrivateNetwork &&
        presentation == other.presentation &&
        breakingChanges == other.breakingChanges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, registeredVia.hashCode);
    _$hash = $jc(_$hash, manifest.hashCode);
    _$hash = $jc(_$hash, manifestSha256.hashCode);
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, egress.hashCode);
    _$hash = $jc(_$hash, approvedBy.hashCode);
    _$hash = $jc(_$hash, approvedAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastItemAt.hashCode);
    _$hash = $jc(_$hash, pull.hashCode);
    _$hash = $jc(_$hash, streams.hashCode);
    _$hash = $jc(_$hash, lastValidationErrors.hashCode);
    _$hash = $jc(_$hash, health.hashCode);
    _$hash = $jc(_$hash, allowPrivateNetwork.hashCode);
    _$hash = $jc(_$hash, presentation.hashCode);
    _$hash = $jc(_$hash, breakingChanges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalSource')
          ..add('sourceId', sourceId)
          ..add('state', state)
          ..add('registeredVia', registeredVia)
          ..add('manifest', manifest)
          ..add('manifestSha256', manifestSha256)
          ..add('access', access)
          ..add('egress', egress)
          ..add('approvedBy', approvedBy)
          ..add('approvedAt', approvedAt)
          ..add('createdAt', createdAt)
          ..add('lastItemAt', lastItemAt)
          ..add('pull', pull)
          ..add('streams', streams)
          ..add('lastValidationErrors', lastValidationErrors)
          ..add('health', health)
          ..add('allowPrivateNetwork', allowPrivateNetwork)
          ..add('presentation', presentation)
          ..add('breakingChanges', breakingChanges))
        .toString();
  }
}

class ExternalSourceBuilder
    implements Builder<ExternalSource, ExternalSourceBuilder> {
  _$ExternalSource? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  ExternalSourceStateEnum? _state;
  ExternalSourceStateEnum? get state => _$this._state;
  set state(ExternalSourceStateEnum? state) => _$this._state = state;

  ExternalSourceRegisteredViaEnum? _registeredVia;
  ExternalSourceRegisteredViaEnum? get registeredVia => _$this._registeredVia;
  set registeredVia(ExternalSourceRegisteredViaEnum? registeredVia) =>
      _$this._registeredVia = registeredVia;

  EdpManifestBuilder? _manifest;
  EdpManifestBuilder get manifest => _$this._manifest ??= EdpManifestBuilder();
  set manifest(EdpManifestBuilder? manifest) => _$this._manifest = manifest;

  String? _manifestSha256;
  String? get manifestSha256 => _$this._manifestSha256;
  set manifestSha256(String? manifestSha256) =>
      _$this._manifestSha256 = manifestSha256;

  SourceAccessBuilder? _access;
  SourceAccessBuilder get access => _$this._access ??= SourceAccessBuilder();
  set access(SourceAccessBuilder? access) => _$this._access = access;

  String? _egress;
  String? get egress => _$this._egress;
  set egress(String? egress) => _$this._egress = egress;

  String? _approvedBy;
  String? get approvedBy => _$this._approvedBy;
  set approvedBy(String? approvedBy) => _$this._approvedBy = approvedBy;

  DateTime? _approvedAt;
  DateTime? get approvedAt => _$this._approvedAt;
  set approvedAt(DateTime? approvedAt) => _$this._approvedAt = approvedAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _lastItemAt;
  DateTime? get lastItemAt => _$this._lastItemAt;
  set lastItemAt(DateTime? lastItemAt) => _$this._lastItemAt = lastItemAt;

  ExternalSourcePullBuilder? _pull;
  ExternalSourcePullBuilder get pull =>
      _$this._pull ??= ExternalSourcePullBuilder();
  set pull(ExternalSourcePullBuilder? pull) => _$this._pull = pull;

  ListBuilder<ExternalStreamStats>? _streams;
  ListBuilder<ExternalStreamStats> get streams =>
      _$this._streams ??= ListBuilder<ExternalStreamStats>();
  set streams(ListBuilder<ExternalStreamStats>? streams) =>
      _$this._streams = streams;

  ListBuilder<EdpItemRejection>? _lastValidationErrors;
  ListBuilder<EdpItemRejection> get lastValidationErrors =>
      _$this._lastValidationErrors ??= ListBuilder<EdpItemRejection>();
  set lastValidationErrors(
          ListBuilder<EdpItemRejection>? lastValidationErrors) =>
      _$this._lastValidationErrors = lastValidationErrors;

  String? _health;
  String? get health => _$this._health;
  set health(String? health) => _$this._health = health;

  bool? _allowPrivateNetwork;
  bool? get allowPrivateNetwork => _$this._allowPrivateNetwork;
  set allowPrivateNetwork(bool? allowPrivateNetwork) =>
      _$this._allowPrivateNetwork = allowPrivateNetwork;

  MapBuilder<String, EdpPresentation>? _presentation;
  MapBuilder<String, EdpPresentation> get presentation =>
      _$this._presentation ??= MapBuilder<String, EdpPresentation>();
  set presentation(MapBuilder<String, EdpPresentation>? presentation) =>
      _$this._presentation = presentation;

  ListBuilder<String>? _breakingChanges;
  ListBuilder<String> get breakingChanges =>
      _$this._breakingChanges ??= ListBuilder<String>();
  set breakingChanges(ListBuilder<String>? breakingChanges) =>
      _$this._breakingChanges = breakingChanges;

  ExternalSourceBuilder() {
    ExternalSource._defaults(this);
  }

  ExternalSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _state = $v.state;
      _registeredVia = $v.registeredVia;
      _manifest = $v.manifest.toBuilder();
      _manifestSha256 = $v.manifestSha256;
      _access = $v.access?.toBuilder();
      _egress = $v.egress;
      _approvedBy = $v.approvedBy;
      _approvedAt = $v.approvedAt;
      _createdAt = $v.createdAt;
      _lastItemAt = $v.lastItemAt;
      _pull = $v.pull?.toBuilder();
      _streams = $v.streams?.toBuilder();
      _lastValidationErrors = $v.lastValidationErrors?.toBuilder();
      _health = $v.health;
      _allowPrivateNetwork = $v.allowPrivateNetwork;
      _presentation = $v.presentation?.toBuilder();
      _breakingChanges = $v.breakingChanges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalSource other) {
    _$v = other as _$ExternalSource;
  }

  @override
  void update(void Function(ExternalSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalSource build() => _build();

  _$ExternalSource _build() {
    _$ExternalSource _$result;
    try {
      _$result = _$v ??
          _$ExternalSource._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
                sourceId, r'ExternalSource', 'sourceId'),
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'ExternalSource', 'state'),
            registeredVia: registeredVia,
            manifest: manifest.build(),
            manifestSha256: manifestSha256,
            access: _access?.build(),
            egress: egress,
            approvedBy: approvedBy,
            approvedAt: approvedAt,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ExternalSource', 'createdAt'),
            lastItemAt: lastItemAt,
            pull: _pull?.build(),
            streams: _streams?.build(),
            lastValidationErrors: _lastValidationErrors?.build(),
            health: health,
            allowPrivateNetwork: allowPrivateNetwork,
            presentation: _presentation?.build(),
            breakingChanges: _breakingChanges?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'manifest';
        manifest.build();

        _$failedField = 'access';
        _access?.build();

        _$failedField = 'pull';
        _pull?.build();
        _$failedField = 'streams';
        _streams?.build();
        _$failedField = 'lastValidationErrors';
        _lastValidationErrors?.build();

        _$failedField = 'presentation';
        _presentation?.build();
        _$failedField = 'breakingChanges';
        _breakingChanges?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExternalSource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
