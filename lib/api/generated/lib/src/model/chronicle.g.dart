// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleStatusEnum _$chronicleStatusEnum_proposed =
    const ChronicleStatusEnum._('proposed');
const ChronicleStatusEnum _$chronicleStatusEnum_active =
    const ChronicleStatusEnum._('active');
const ChronicleStatusEnum _$chronicleStatusEnum_paused =
    const ChronicleStatusEnum._('paused');
const ChronicleStatusEnum _$chronicleStatusEnum_stopped =
    const ChronicleStatusEnum._('stopped');
const ChronicleStatusEnum _$chronicleStatusEnum_archived =
    const ChronicleStatusEnum._('archived');
const ChronicleStatusEnum _$chronicleStatusEnum_unknownDefaultOpenApi =
    const ChronicleStatusEnum._('unknownDefaultOpenApi');

ChronicleStatusEnum _$chronicleStatusEnumValueOf(String name) {
  switch (name) {
    case 'proposed':
      return _$chronicleStatusEnum_proposed;
    case 'active':
      return _$chronicleStatusEnum_active;
    case 'paused':
      return _$chronicleStatusEnum_paused;
    case 'stopped':
      return _$chronicleStatusEnum_stopped;
    case 'archived':
      return _$chronicleStatusEnum_archived;
    case 'unknownDefaultOpenApi':
      return _$chronicleStatusEnum_unknownDefaultOpenApi;
    default:
      return _$chronicleStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChronicleStatusEnum> _$chronicleStatusEnumValues =
    BuiltSet<ChronicleStatusEnum>(const <ChronicleStatusEnum>[
      _$chronicleStatusEnum_proposed,
      _$chronicleStatusEnum_active,
      _$chronicleStatusEnum_paused,
      _$chronicleStatusEnum_stopped,
      _$chronicleStatusEnum_archived,
      _$chronicleStatusEnum_unknownDefaultOpenApi,
    ]);

const ChronicleCapStateEnum _$chronicleCapStateEnum_ok =
    const ChronicleCapStateEnum._('ok');
const ChronicleCapStateEnum _$chronicleCapStateEnum_warning =
    const ChronicleCapStateEnum._('warning');
const ChronicleCapStateEnum _$chronicleCapStateEnum_exceeded =
    const ChronicleCapStateEnum._('exceeded');
const ChronicleCapStateEnum _$chronicleCapStateEnum_unknownDefaultOpenApi =
    const ChronicleCapStateEnum._('unknownDefaultOpenApi');

ChronicleCapStateEnum _$chronicleCapStateEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$chronicleCapStateEnum_ok;
    case 'warning':
      return _$chronicleCapStateEnum_warning;
    case 'exceeded':
      return _$chronicleCapStateEnum_exceeded;
    case 'unknownDefaultOpenApi':
      return _$chronicleCapStateEnum_unknownDefaultOpenApi;
    default:
      return _$chronicleCapStateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChronicleCapStateEnum> _$chronicleCapStateEnumValues =
    BuiltSet<ChronicleCapStateEnum>(const <ChronicleCapStateEnum>[
      _$chronicleCapStateEnum_ok,
      _$chronicleCapStateEnum_warning,
      _$chronicleCapStateEnum_exceeded,
      _$chronicleCapStateEnum_unknownDefaultOpenApi,
    ]);

const ChronicleOriginEnum _$chronicleOriginEnum_operator_ =
    const ChronicleOriginEnum._('operator_');
const ChronicleOriginEnum _$chronicleOriginEnum_agent =
    const ChronicleOriginEnum._('agent');
const ChronicleOriginEnum _$chronicleOriginEnum_analyst =
    const ChronicleOriginEnum._('analyst');
const ChronicleOriginEnum _$chronicleOriginEnum_unknownDefaultOpenApi =
    const ChronicleOriginEnum._('unknownDefaultOpenApi');

ChronicleOriginEnum _$chronicleOriginEnumValueOf(String name) {
  switch (name) {
    case 'operator_':
      return _$chronicleOriginEnum_operator_;
    case 'agent':
      return _$chronicleOriginEnum_agent;
    case 'analyst':
      return _$chronicleOriginEnum_analyst;
    case 'unknownDefaultOpenApi':
      return _$chronicleOriginEnum_unknownDefaultOpenApi;
    default:
      return _$chronicleOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChronicleOriginEnum> _$chronicleOriginEnumValues =
    BuiltSet<ChronicleOriginEnum>(const <ChronicleOriginEnum>[
      _$chronicleOriginEnum_operator_,
      _$chronicleOriginEnum_agent,
      _$chronicleOriginEnum_analyst,
      _$chronicleOriginEnum_unknownDefaultOpenApi,
    ]);

const ChronicleDiscoverabilityEnum _$chronicleDiscoverabilityEnum_none =
    const ChronicleDiscoverabilityEnum._('none');
const ChronicleDiscoverabilityEnum _$chronicleDiscoverabilityEnum_instance =
    const ChronicleDiscoverabilityEnum._('instance');
const ChronicleDiscoverabilityEnum _$chronicleDiscoverabilityEnum_network =
    const ChronicleDiscoverabilityEnum._('network');
const ChronicleDiscoverabilityEnum
_$chronicleDiscoverabilityEnum_unknownDefaultOpenApi =
    const ChronicleDiscoverabilityEnum._('unknownDefaultOpenApi');

ChronicleDiscoverabilityEnum _$chronicleDiscoverabilityEnumValueOf(
  String name,
) {
  switch (name) {
    case 'none':
      return _$chronicleDiscoverabilityEnum_none;
    case 'instance':
      return _$chronicleDiscoverabilityEnum_instance;
    case 'network':
      return _$chronicleDiscoverabilityEnum_network;
    case 'unknownDefaultOpenApi':
      return _$chronicleDiscoverabilityEnum_unknownDefaultOpenApi;
    default:
      return _$chronicleDiscoverabilityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChronicleDiscoverabilityEnum>
_$chronicleDiscoverabilityEnumValues =
    BuiltSet<ChronicleDiscoverabilityEnum>(const <ChronicleDiscoverabilityEnum>[
      _$chronicleDiscoverabilityEnum_none,
      _$chronicleDiscoverabilityEnum_instance,
      _$chronicleDiscoverabilityEnum_network,
      _$chronicleDiscoverabilityEnum_unknownDefaultOpenApi,
    ]);

Serializer<ChronicleStatusEnum> _$chronicleStatusEnumSerializer =
    _$ChronicleStatusEnumSerializer();
Serializer<ChronicleCapStateEnum> _$chronicleCapStateEnumSerializer =
    _$ChronicleCapStateEnumSerializer();
Serializer<ChronicleOriginEnum> _$chronicleOriginEnumSerializer =
    _$ChronicleOriginEnumSerializer();
Serializer<ChronicleDiscoverabilityEnum>
_$chronicleDiscoverabilityEnumSerializer =
    _$ChronicleDiscoverabilityEnumSerializer();

class _$ChronicleStatusEnumSerializer
    implements PrimitiveSerializer<ChronicleStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'proposed': 'proposed',
    'active': 'active',
    'paused': 'paused',
    'stopped': 'stopped',
    'archived': 'archived',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'proposed': 'proposed',
    'active': 'active',
    'paused': 'paused',
    'stopped': 'stopped',
    'archived': 'archived',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleStatusEnum];
  @override
  final String wireName = 'ChronicleStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleCapStateEnumSerializer
    implements PrimitiveSerializer<ChronicleCapStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'warning': 'warning',
    'exceeded': 'exceeded',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'warning': 'warning',
    'exceeded': 'exceeded',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleCapStateEnum];
  @override
  final String wireName = 'ChronicleCapStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleCapStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleCapStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleCapStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleOriginEnumSerializer
    implements PrimitiveSerializer<ChronicleOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'operator_': 'operator',
    'agent': 'agent',
    'analyst': 'analyst',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'operator': 'operator_',
    'agent': 'agent',
    'analyst': 'analyst',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleOriginEnum];
  @override
  final String wireName = 'ChronicleOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleDiscoverabilityEnumSerializer
    implements PrimitiveSerializer<ChronicleDiscoverabilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'instance': 'instance',
    'network': 'network',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'instance': 'instance',
    'network': 'network',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleDiscoverabilityEnum];
  @override
  final String wireName = 'ChronicleDiscoverabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleDiscoverabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleDiscoverabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleDiscoverabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Chronicle extends Chronicle {
  @override
  final String id;
  @override
  final String ref;
  @override
  final String displayId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final PrincipalSummary owner;
  @override
  final Visibility visibility;
  @override
  final String tlp;
  @override
  final ChronicleStatusEnum status;
  @override
  final ChronicleArea? area;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? stoppedAt;
  @override
  final int? captureFromSeq;
  @override
  final int? captureToSeq;
  @override
  final String retention;
  @override
  final int sizeCapBytes;
  @override
  final int bytesUsed;
  @override
  final ChronicleCapStateEnum? capState;
  @override
  final String workspaceId;
  @override
  final BuiltList<String>? situationIds;
  @override
  final BuiltList<String>? hypothesisSetIds;
  @override
  final BuiltList<String>? investigationIds;
  @override
  final BuiltList<String>? topicIds;
  @override
  final ChronicleOriginEnum origin;
  @override
  final String? proposalId;
  @override
  final BuiltList<ChronicleLayer> layers;
  @override
  final ChronicleArchive? archive;
  @override
  final ChronicleDiscoverabilityEnum? discoverability;
  @override
  final bool? revealTitle;
  @override
  final bool? revealOwner;
  @override
  final int? unreadCount;
  @override
  final BuiltList<String>? tags;
  @override
  final int version;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Chronicle([void Function(ChronicleBuilder)? updates]) =>
      (ChronicleBuilder()..update(updates))._build();

  _$Chronicle._({
    required this.id,
    required this.ref,
    required this.displayId,
    required this.name,
    this.description,
    required this.owner,
    required this.visibility,
    required this.tlp,
    required this.status,
    this.area,
    this.startedAt,
    this.stoppedAt,
    this.captureFromSeq,
    this.captureToSeq,
    required this.retention,
    required this.sizeCapBytes,
    required this.bytesUsed,
    this.capState,
    required this.workspaceId,
    this.situationIds,
    this.hypothesisSetIds,
    this.investigationIds,
    this.topicIds,
    required this.origin,
    this.proposalId,
    required this.layers,
    this.archive,
    this.discoverability,
    this.revealTitle,
    this.revealOwner,
    this.unreadCount,
    this.tags,
    required this.version,
    required this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  Chronicle rebuild(void Function(ChronicleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleBuilder toBuilder() => ChronicleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chronicle &&
        id == other.id &&
        ref == other.ref &&
        displayId == other.displayId &&
        name == other.name &&
        description == other.description &&
        owner == other.owner &&
        visibility == other.visibility &&
        tlp == other.tlp &&
        status == other.status &&
        area == other.area &&
        startedAt == other.startedAt &&
        stoppedAt == other.stoppedAt &&
        captureFromSeq == other.captureFromSeq &&
        captureToSeq == other.captureToSeq &&
        retention == other.retention &&
        sizeCapBytes == other.sizeCapBytes &&
        bytesUsed == other.bytesUsed &&
        capState == other.capState &&
        workspaceId == other.workspaceId &&
        situationIds == other.situationIds &&
        hypothesisSetIds == other.hypothesisSetIds &&
        investigationIds == other.investigationIds &&
        topicIds == other.topicIds &&
        origin == other.origin &&
        proposalId == other.proposalId &&
        layers == other.layers &&
        archive == other.archive &&
        discoverability == other.discoverability &&
        revealTitle == other.revealTitle &&
        revealOwner == other.revealOwner &&
        unreadCount == other.unreadCount &&
        tags == other.tags &&
        version == other.version &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, displayId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, stoppedAt.hashCode);
    _$hash = $jc(_$hash, captureFromSeq.hashCode);
    _$hash = $jc(_$hash, captureToSeq.hashCode);
    _$hash = $jc(_$hash, retention.hashCode);
    _$hash = $jc(_$hash, sizeCapBytes.hashCode);
    _$hash = $jc(_$hash, bytesUsed.hashCode);
    _$hash = $jc(_$hash, capState.hashCode);
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jc(_$hash, situationIds.hashCode);
    _$hash = $jc(_$hash, hypothesisSetIds.hashCode);
    _$hash = $jc(_$hash, investigationIds.hashCode);
    _$hash = $jc(_$hash, topicIds.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, proposalId.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jc(_$hash, archive.hashCode);
    _$hash = $jc(_$hash, discoverability.hashCode);
    _$hash = $jc(_$hash, revealTitle.hashCode);
    _$hash = $jc(_$hash, revealOwner.hashCode);
    _$hash = $jc(_$hash, unreadCount.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Chronicle')
          ..add('id', id)
          ..add('ref', ref)
          ..add('displayId', displayId)
          ..add('name', name)
          ..add('description', description)
          ..add('owner', owner)
          ..add('visibility', visibility)
          ..add('tlp', tlp)
          ..add('status', status)
          ..add('area', area)
          ..add('startedAt', startedAt)
          ..add('stoppedAt', stoppedAt)
          ..add('captureFromSeq', captureFromSeq)
          ..add('captureToSeq', captureToSeq)
          ..add('retention', retention)
          ..add('sizeCapBytes', sizeCapBytes)
          ..add('bytesUsed', bytesUsed)
          ..add('capState', capState)
          ..add('workspaceId', workspaceId)
          ..add('situationIds', situationIds)
          ..add('hypothesisSetIds', hypothesisSetIds)
          ..add('investigationIds', investigationIds)
          ..add('topicIds', topicIds)
          ..add('origin', origin)
          ..add('proposalId', proposalId)
          ..add('layers', layers)
          ..add('archive', archive)
          ..add('discoverability', discoverability)
          ..add('revealTitle', revealTitle)
          ..add('revealOwner', revealOwner)
          ..add('unreadCount', unreadCount)
          ..add('tags', tags)
          ..add('version', version)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ChronicleBuilder implements Builder<Chronicle, ChronicleBuilder> {
  _$Chronicle? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _displayId;
  String? get displayId => _$this._displayId;
  set displayId(String? displayId) => _$this._displayId = displayId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  PrincipalSummaryBuilder? _owner;
  PrincipalSummaryBuilder get owner =>
      _$this._owner ??= PrincipalSummaryBuilder();
  set owner(PrincipalSummaryBuilder? owner) => _$this._owner = owner;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  ChronicleStatusEnum? _status;
  ChronicleStatusEnum? get status => _$this._status;
  set status(ChronicleStatusEnum? status) => _$this._status = status;

  ChronicleAreaBuilder? _area;
  ChronicleAreaBuilder get area => _$this._area ??= ChronicleAreaBuilder();
  set area(ChronicleAreaBuilder? area) => _$this._area = area;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _stoppedAt;
  DateTime? get stoppedAt => _$this._stoppedAt;
  set stoppedAt(DateTime? stoppedAt) => _$this._stoppedAt = stoppedAt;

  int? _captureFromSeq;
  int? get captureFromSeq => _$this._captureFromSeq;
  set captureFromSeq(int? captureFromSeq) =>
      _$this._captureFromSeq = captureFromSeq;

  int? _captureToSeq;
  int? get captureToSeq => _$this._captureToSeq;
  set captureToSeq(int? captureToSeq) => _$this._captureToSeq = captureToSeq;

  String? _retention;
  String? get retention => _$this._retention;
  set retention(String? retention) => _$this._retention = retention;

  int? _sizeCapBytes;
  int? get sizeCapBytes => _$this._sizeCapBytes;
  set sizeCapBytes(int? sizeCapBytes) => _$this._sizeCapBytes = sizeCapBytes;

  int? _bytesUsed;
  int? get bytesUsed => _$this._bytesUsed;
  set bytesUsed(int? bytesUsed) => _$this._bytesUsed = bytesUsed;

  ChronicleCapStateEnum? _capState;
  ChronicleCapStateEnum? get capState => _$this._capState;
  set capState(ChronicleCapStateEnum? capState) => _$this._capState = capState;

  String? _workspaceId;
  String? get workspaceId => _$this._workspaceId;
  set workspaceId(String? workspaceId) => _$this._workspaceId = workspaceId;

  ListBuilder<String>? _situationIds;
  ListBuilder<String> get situationIds =>
      _$this._situationIds ??= ListBuilder<String>();
  set situationIds(ListBuilder<String>? situationIds) =>
      _$this._situationIds = situationIds;

  ListBuilder<String>? _hypothesisSetIds;
  ListBuilder<String> get hypothesisSetIds =>
      _$this._hypothesisSetIds ??= ListBuilder<String>();
  set hypothesisSetIds(ListBuilder<String>? hypothesisSetIds) =>
      _$this._hypothesisSetIds = hypothesisSetIds;

  ListBuilder<String>? _investigationIds;
  ListBuilder<String> get investigationIds =>
      _$this._investigationIds ??= ListBuilder<String>();
  set investigationIds(ListBuilder<String>? investigationIds) =>
      _$this._investigationIds = investigationIds;

  ListBuilder<String>? _topicIds;
  ListBuilder<String> get topicIds =>
      _$this._topicIds ??= ListBuilder<String>();
  set topicIds(ListBuilder<String>? topicIds) => _$this._topicIds = topicIds;

  ChronicleOriginEnum? _origin;
  ChronicleOriginEnum? get origin => _$this._origin;
  set origin(ChronicleOriginEnum? origin) => _$this._origin = origin;

  String? _proposalId;
  String? get proposalId => _$this._proposalId;
  set proposalId(String? proposalId) => _$this._proposalId = proposalId;

  ListBuilder<ChronicleLayer>? _layers;
  ListBuilder<ChronicleLayer> get layers =>
      _$this._layers ??= ListBuilder<ChronicleLayer>();
  set layers(ListBuilder<ChronicleLayer>? layers) => _$this._layers = layers;

  ChronicleArchiveBuilder? _archive;
  ChronicleArchiveBuilder get archive =>
      _$this._archive ??= ChronicleArchiveBuilder();
  set archive(ChronicleArchiveBuilder? archive) => _$this._archive = archive;

  ChronicleDiscoverabilityEnum? _discoverability;
  ChronicleDiscoverabilityEnum? get discoverability => _$this._discoverability;
  set discoverability(ChronicleDiscoverabilityEnum? discoverability) =>
      _$this._discoverability = discoverability;

  bool? _revealTitle;
  bool? get revealTitle => _$this._revealTitle;
  set revealTitle(bool? revealTitle) => _$this._revealTitle = revealTitle;

  bool? _revealOwner;
  bool? get revealOwner => _$this._revealOwner;
  set revealOwner(bool? revealOwner) => _$this._revealOwner = revealOwner;

  int? _unreadCount;
  int? get unreadCount => _$this._unreadCount;
  set unreadCount(int? unreadCount) => _$this._unreadCount = unreadCount;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ChronicleBuilder() {
    Chronicle._defaults(this);
  }

  ChronicleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _displayId = $v.displayId;
      _name = $v.name;
      _description = $v.description;
      _owner = $v.owner.toBuilder();
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _status = $v.status;
      _area = $v.area?.toBuilder();
      _startedAt = $v.startedAt;
      _stoppedAt = $v.stoppedAt;
      _captureFromSeq = $v.captureFromSeq;
      _captureToSeq = $v.captureToSeq;
      _retention = $v.retention;
      _sizeCapBytes = $v.sizeCapBytes;
      _bytesUsed = $v.bytesUsed;
      _capState = $v.capState;
      _workspaceId = $v.workspaceId;
      _situationIds = $v.situationIds?.toBuilder();
      _hypothesisSetIds = $v.hypothesisSetIds?.toBuilder();
      _investigationIds = $v.investigationIds?.toBuilder();
      _topicIds = $v.topicIds?.toBuilder();
      _origin = $v.origin;
      _proposalId = $v.proposalId;
      _layers = $v.layers.toBuilder();
      _archive = $v.archive?.toBuilder();
      _discoverability = $v.discoverability;
      _revealTitle = $v.revealTitle;
      _revealOwner = $v.revealOwner;
      _unreadCount = $v.unreadCount;
      _tags = $v.tags?.toBuilder();
      _version = $v.version;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Chronicle other) {
    _$v = other as _$Chronicle;
  }

  @override
  void update(void Function(ChronicleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Chronicle build() => _build();

  _$Chronicle _build() {
    _$Chronicle _$result;
    try {
      _$result =
          _$v ??
          _$Chronicle._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Chronicle', 'id'),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'Chronicle',
              'ref',
            ),
            displayId: BuiltValueNullFieldError.checkNotNull(
              displayId,
              r'Chronicle',
              'displayId',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'Chronicle',
              'name',
            ),
            description: description,
            owner: owner.build(),
            visibility: BuiltValueNullFieldError.checkNotNull(
              visibility,
              r'Chronicle',
              'visibility',
            ),
            tlp: BuiltValueNullFieldError.checkNotNull(
              tlp,
              r'Chronicle',
              'tlp',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'Chronicle',
              'status',
            ),
            area: _area?.build(),
            startedAt: startedAt,
            stoppedAt: stoppedAt,
            captureFromSeq: captureFromSeq,
            captureToSeq: captureToSeq,
            retention: BuiltValueNullFieldError.checkNotNull(
              retention,
              r'Chronicle',
              'retention',
            ),
            sizeCapBytes: BuiltValueNullFieldError.checkNotNull(
              sizeCapBytes,
              r'Chronicle',
              'sizeCapBytes',
            ),
            bytesUsed: BuiltValueNullFieldError.checkNotNull(
              bytesUsed,
              r'Chronicle',
              'bytesUsed',
            ),
            capState: capState,
            workspaceId: BuiltValueNullFieldError.checkNotNull(
              workspaceId,
              r'Chronicle',
              'workspaceId',
            ),
            situationIds: _situationIds?.build(),
            hypothesisSetIds: _hypothesisSetIds?.build(),
            investigationIds: _investigationIds?.build(),
            topicIds: _topicIds?.build(),
            origin: BuiltValueNullFieldError.checkNotNull(
              origin,
              r'Chronicle',
              'origin',
            ),
            proposalId: proposalId,
            layers: layers.build(),
            archive: _archive?.build(),
            discoverability: discoverability,
            revealTitle: revealTitle,
            revealOwner: revealOwner,
            unreadCount: unreadCount,
            tags: _tags?.build(),
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'Chronicle',
              'version',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Chronicle',
              'createdAt',
            ),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();

        _$failedField = 'area';
        _area?.build();

        _$failedField = 'situationIds';
        _situationIds?.build();
        _$failedField = 'hypothesisSetIds';
        _hypothesisSetIds?.build();
        _$failedField = 'investigationIds';
        _investigationIds?.build();
        _$failedField = 'topicIds';
        _topicIds?.build();

        _$failedField = 'layers';
        layers.build();
        _$failedField = 'archive';
        _archive?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Chronicle',
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
