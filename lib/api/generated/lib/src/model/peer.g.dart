// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PeerModeEnum _$peerModeEnum_PULL = const PeerModeEnum._('PULL');
const PeerModeEnum _$peerModeEnum_RECEIVE = const PeerModeEnum._('RECEIVE');

PeerModeEnum _$peerModeEnumValueOf(String name) {
  switch (name) {
    case 'PULL':
      return _$peerModeEnum_PULL;
    case 'RECEIVE':
      return _$peerModeEnum_RECEIVE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PeerModeEnum> _$peerModeEnumValues = BuiltSet<PeerModeEnum>(
  const <PeerModeEnum>[_$peerModeEnum_PULL, _$peerModeEnum_RECEIVE],
);

const PeerHealthReasonEnum _$peerHealthReasonEnum_PEER_KEY_MISMATCH =
    const PeerHealthReasonEnum._('PEER_KEY_MISMATCH');
const PeerHealthReasonEnum _$peerHealthReasonEnum_PEER_UNREACHABLE =
    const PeerHealthReasonEnum._('PEER_UNREACHABLE');
const PeerHealthReasonEnum _$peerHealthReasonEnum_PEER_RESYNC =
    const PeerHealthReasonEnum._('PEER_RESYNC');

PeerHealthReasonEnum _$peerHealthReasonEnumValueOf(String name) {
  switch (name) {
    case 'PEER_KEY_MISMATCH':
      return _$peerHealthReasonEnum_PEER_KEY_MISMATCH;
    case 'PEER_UNREACHABLE':
      return _$peerHealthReasonEnum_PEER_UNREACHABLE;
    case 'PEER_RESYNC':
      return _$peerHealthReasonEnum_PEER_RESYNC;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PeerHealthReasonEnum> _$peerHealthReasonEnumValues =
    BuiltSet<PeerHealthReasonEnum>(const <PeerHealthReasonEnum>[
      _$peerHealthReasonEnum_PEER_KEY_MISMATCH,
      _$peerHealthReasonEnum_PEER_UNREACHABLE,
      _$peerHealthReasonEnum_PEER_RESYNC,
    ]);

const PeerReliabilityEnum _$peerReliabilityEnum_A = const PeerReliabilityEnum._(
  'A',
);
const PeerReliabilityEnum _$peerReliabilityEnum_B = const PeerReliabilityEnum._(
  'B',
);
const PeerReliabilityEnum _$peerReliabilityEnum_C = const PeerReliabilityEnum._(
  'C',
);
const PeerReliabilityEnum _$peerReliabilityEnum_D = const PeerReliabilityEnum._(
  'D',
);
const PeerReliabilityEnum _$peerReliabilityEnum_E = const PeerReliabilityEnum._(
  'E',
);
const PeerReliabilityEnum _$peerReliabilityEnum_F = const PeerReliabilityEnum._(
  'F',
);

PeerReliabilityEnum _$peerReliabilityEnumValueOf(String name) {
  switch (name) {
    case 'A':
      return _$peerReliabilityEnum_A;
    case 'B':
      return _$peerReliabilityEnum_B;
    case 'C':
      return _$peerReliabilityEnum_C;
    case 'D':
      return _$peerReliabilityEnum_D;
    case 'E':
      return _$peerReliabilityEnum_E;
    case 'F':
      return _$peerReliabilityEnum_F;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PeerReliabilityEnum> _$peerReliabilityEnumValues =
    BuiltSet<PeerReliabilityEnum>(const <PeerReliabilityEnum>[
      _$peerReliabilityEnum_A,
      _$peerReliabilityEnum_B,
      _$peerReliabilityEnum_C,
      _$peerReliabilityEnum_D,
      _$peerReliabilityEnum_E,
      _$peerReliabilityEnum_F,
    ]);

Serializer<PeerModeEnum> _$peerModeEnumSerializer = _$PeerModeEnumSerializer();
Serializer<PeerHealthReasonEnum> _$peerHealthReasonEnumSerializer =
    _$PeerHealthReasonEnumSerializer();
Serializer<PeerReliabilityEnum> _$peerReliabilityEnumSerializer =
    _$PeerReliabilityEnumSerializer();

class _$PeerModeEnumSerializer implements PrimitiveSerializer<PeerModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PULL': 'PULL',
    'RECEIVE': 'RECEIVE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PULL': 'PULL',
    'RECEIVE': 'RECEIVE',
  };

  @override
  final Iterable<Type> types = const <Type>[PeerModeEnum];
  @override
  final String wireName = 'PeerModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PeerModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PeerModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PeerModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PeerHealthReasonEnumSerializer
    implements PrimitiveSerializer<PeerHealthReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PEER_KEY_MISMATCH': 'PEER_KEY_MISMATCH',
    'PEER_UNREACHABLE': 'PEER_UNREACHABLE',
    'PEER_RESYNC': 'PEER_RESYNC',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PEER_KEY_MISMATCH': 'PEER_KEY_MISMATCH',
    'PEER_UNREACHABLE': 'PEER_UNREACHABLE',
    'PEER_RESYNC': 'PEER_RESYNC',
  };

  @override
  final Iterable<Type> types = const <Type>[PeerHealthReasonEnum];
  @override
  final String wireName = 'PeerHealthReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    PeerHealthReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PeerHealthReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PeerHealthReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PeerReliabilityEnumSerializer
    implements PrimitiveSerializer<PeerReliabilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
  };

  @override
  final Iterable<Type> types = const <Type>[PeerReliabilityEnum];
  @override
  final String wireName = 'PeerReliabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    PeerReliabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PeerReliabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PeerReliabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Peer extends Peer {
  @override
  final String id;
  @override
  final String name;
  @override
  final String baseUrl;
  @override
  final PeerModeEnum mode;
  @override
  final bool enabled;
  @override
  final String state;
  @override
  final PeerHealthReasonEnum? healthReason;
  @override
  final int? lastSeq;
  @override
  final int? lagSeq;
  @override
  final String? lastError;
  @override
  final String? pinnedKid;
  @override
  final String? remoteInstanceId;
  @override
  final PeerSelection selection;
  @override
  final bool? sameOperator;
  @override
  final PeerReliabilityEnum? reliability;
  @override
  final bool? tokenSet;
  @override
  final String? ingestKeyPrefix;
  @override
  final BuiltList<String>? sourceIds;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool? exchangeKeySet;

  factory _$Peer([void Function(PeerBuilder)? updates]) =>
      (PeerBuilder()..update(updates))._build();

  _$Peer._({
    required this.id,
    required this.name,
    required this.baseUrl,
    required this.mode,
    required this.enabled,
    required this.state,
    this.healthReason,
    this.lastSeq,
    this.lagSeq,
    this.lastError,
    this.pinnedKid,
    this.remoteInstanceId,
    required this.selection,
    this.sameOperator,
    this.reliability,
    this.tokenSet,
    this.ingestKeyPrefix,
    this.sourceIds,
    required this.createdAt,
    required this.updatedAt,
    this.exchangeKeySet,
  }) : super._();
  @override
  Peer rebuild(void Function(PeerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeerBuilder toBuilder() => PeerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Peer &&
        id == other.id &&
        name == other.name &&
        baseUrl == other.baseUrl &&
        mode == other.mode &&
        enabled == other.enabled &&
        state == other.state &&
        healthReason == other.healthReason &&
        lastSeq == other.lastSeq &&
        lagSeq == other.lagSeq &&
        lastError == other.lastError &&
        pinnedKid == other.pinnedKid &&
        remoteInstanceId == other.remoteInstanceId &&
        selection == other.selection &&
        sameOperator == other.sameOperator &&
        reliability == other.reliability &&
        tokenSet == other.tokenSet &&
        ingestKeyPrefix == other.ingestKeyPrefix &&
        sourceIds == other.sourceIds &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        exchangeKeySet == other.exchangeKeySet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, healthReason.hashCode);
    _$hash = $jc(_$hash, lastSeq.hashCode);
    _$hash = $jc(_$hash, lagSeq.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jc(_$hash, pinnedKid.hashCode);
    _$hash = $jc(_$hash, remoteInstanceId.hashCode);
    _$hash = $jc(_$hash, selection.hashCode);
    _$hash = $jc(_$hash, sameOperator.hashCode);
    _$hash = $jc(_$hash, reliability.hashCode);
    _$hash = $jc(_$hash, tokenSet.hashCode);
    _$hash = $jc(_$hash, ingestKeyPrefix.hashCode);
    _$hash = $jc(_$hash, sourceIds.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, exchangeKeySet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Peer')
          ..add('id', id)
          ..add('name', name)
          ..add('baseUrl', baseUrl)
          ..add('mode', mode)
          ..add('enabled', enabled)
          ..add('state', state)
          ..add('healthReason', healthReason)
          ..add('lastSeq', lastSeq)
          ..add('lagSeq', lagSeq)
          ..add('lastError', lastError)
          ..add('pinnedKid', pinnedKid)
          ..add('remoteInstanceId', remoteInstanceId)
          ..add('selection', selection)
          ..add('sameOperator', sameOperator)
          ..add('reliability', reliability)
          ..add('tokenSet', tokenSet)
          ..add('ingestKeyPrefix', ingestKeyPrefix)
          ..add('sourceIds', sourceIds)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('exchangeKeySet', exchangeKeySet))
        .toString();
  }
}

class PeerBuilder implements Builder<Peer, PeerBuilder> {
  _$Peer? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(String? baseUrl) => _$this._baseUrl = baseUrl;

  PeerModeEnum? _mode;
  PeerModeEnum? get mode => _$this._mode;
  set mode(PeerModeEnum? mode) => _$this._mode = mode;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  PeerHealthReasonEnum? _healthReason;
  PeerHealthReasonEnum? get healthReason => _$this._healthReason;
  set healthReason(PeerHealthReasonEnum? healthReason) =>
      _$this._healthReason = healthReason;

  int? _lastSeq;
  int? get lastSeq => _$this._lastSeq;
  set lastSeq(int? lastSeq) => _$this._lastSeq = lastSeq;

  int? _lagSeq;
  int? get lagSeq => _$this._lagSeq;
  set lagSeq(int? lagSeq) => _$this._lagSeq = lagSeq;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  String? _pinnedKid;
  String? get pinnedKid => _$this._pinnedKid;
  set pinnedKid(String? pinnedKid) => _$this._pinnedKid = pinnedKid;

  String? _remoteInstanceId;
  String? get remoteInstanceId => _$this._remoteInstanceId;
  set remoteInstanceId(String? remoteInstanceId) =>
      _$this._remoteInstanceId = remoteInstanceId;

  PeerSelectionBuilder? _selection;
  PeerSelectionBuilder get selection =>
      _$this._selection ??= PeerSelectionBuilder();
  set selection(PeerSelectionBuilder? selection) =>
      _$this._selection = selection;

  bool? _sameOperator;
  bool? get sameOperator => _$this._sameOperator;
  set sameOperator(bool? sameOperator) => _$this._sameOperator = sameOperator;

  PeerReliabilityEnum? _reliability;
  PeerReliabilityEnum? get reliability => _$this._reliability;
  set reliability(PeerReliabilityEnum? reliability) =>
      _$this._reliability = reliability;

  bool? _tokenSet;
  bool? get tokenSet => _$this._tokenSet;
  set tokenSet(bool? tokenSet) => _$this._tokenSet = tokenSet;

  String? _ingestKeyPrefix;
  String? get ingestKeyPrefix => _$this._ingestKeyPrefix;
  set ingestKeyPrefix(String? ingestKeyPrefix) =>
      _$this._ingestKeyPrefix = ingestKeyPrefix;

  ListBuilder<String>? _sourceIds;
  ListBuilder<String> get sourceIds =>
      _$this._sourceIds ??= ListBuilder<String>();
  set sourceIds(ListBuilder<String>? sourceIds) =>
      _$this._sourceIds = sourceIds;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  bool? _exchangeKeySet;
  bool? get exchangeKeySet => _$this._exchangeKeySet;
  set exchangeKeySet(bool? exchangeKeySet) =>
      _$this._exchangeKeySet = exchangeKeySet;

  PeerBuilder() {
    Peer._defaults(this);
  }

  PeerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _baseUrl = $v.baseUrl;
      _mode = $v.mode;
      _enabled = $v.enabled;
      _state = $v.state;
      _healthReason = $v.healthReason;
      _lastSeq = $v.lastSeq;
      _lagSeq = $v.lagSeq;
      _lastError = $v.lastError;
      _pinnedKid = $v.pinnedKid;
      _remoteInstanceId = $v.remoteInstanceId;
      _selection = $v.selection.toBuilder();
      _sameOperator = $v.sameOperator;
      _reliability = $v.reliability;
      _tokenSet = $v.tokenSet;
      _ingestKeyPrefix = $v.ingestKeyPrefix;
      _sourceIds = $v.sourceIds?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _exchangeKeySet = $v.exchangeKeySet;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Peer other) {
    _$v = other as _$Peer;
  }

  @override
  void update(void Function(PeerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Peer build() => _build();

  _$Peer _build() {
    _$Peer _$result;
    try {
      _$result =
          _$v ??
          _$Peer._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Peer', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Peer', 'name'),
            baseUrl: BuiltValueNullFieldError.checkNotNull(
              baseUrl,
              r'Peer',
              'baseUrl',
            ),
            mode: BuiltValueNullFieldError.checkNotNull(mode, r'Peer', 'mode'),
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'Peer',
              'enabled',
            ),
            state: BuiltValueNullFieldError.checkNotNull(
              state,
              r'Peer',
              'state',
            ),
            healthReason: healthReason,
            lastSeq: lastSeq,
            lagSeq: lagSeq,
            lastError: lastError,
            pinnedKid: pinnedKid,
            remoteInstanceId: remoteInstanceId,
            selection: selection.build(),
            sameOperator: sameOperator,
            reliability: reliability,
            tokenSet: tokenSet,
            ingestKeyPrefix: ingestKeyPrefix,
            sourceIds: _sourceIds?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Peer',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'Peer',
              'updatedAt',
            ),
            exchangeKeySet: exchangeKeySet,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selection';
        selection.build();

        _$failedField = 'sourceIds';
        _sourceIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Peer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
