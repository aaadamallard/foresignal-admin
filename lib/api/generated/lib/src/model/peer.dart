//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/peer_selection.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'peer.g.dart';

/// A peer instance and its replication state (113)
///
/// Properties:
/// * [id]
/// * [name]
/// * [baseUrl]
/// * [mode]
/// * [enabled]
/// * [state] - Runtime state: connecting, streaming, resyncing, failing or stopped for PULL peers; receiving for RECEIVE peers
/// * [healthReason]
/// * [lastSeq]
/// * [lagSeq]
/// * [lastError]
/// * [pinnedKid]
/// * [remoteInstanceId]
/// * [selection]
/// * [sameOperator]
/// * [reliability] - Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
/// * [tokenSet]
/// * [ingestKeyPrefix] - Prefix of the current fsp_ ingest key (RECEIVE peers)
/// * [sourceIds] - Dynamic sources: peer-{id}, peer-{id}-trk, peer-{id}-events
/// * [createdAt]
/// * [updatedAt]
/// * [exchangeKeySet] - An exchange key is stored (132)
@BuiltValue()
abstract class Peer implements Built<Peer, PeerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'baseUrl')
  String get baseUrl;

  @BuiltValueField(wireName: r'mode')
  PeerModeEnum get mode;
  // enum modeEnum {  PULL,  RECEIVE,  };

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Runtime state: connecting, streaming, resyncing, failing or stopped for PULL peers; receiving for RECEIVE peers
  @BuiltValueField(wireName: r'state')
  String get state;

  @BuiltValueField(wireName: r'healthReason')
  PeerHealthReasonEnum? get healthReason;
  // enum healthReasonEnum {  PEER_KEY_MISMATCH,  PEER_UNREACHABLE,  PEER_RESYNC,  };

  @BuiltValueField(wireName: r'lastSeq')
  int? get lastSeq;

  @BuiltValueField(wireName: r'lagSeq')
  int? get lagSeq;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  @BuiltValueField(wireName: r'pinnedKid')
  String? get pinnedKid;

  @BuiltValueField(wireName: r'remoteInstanceId')
  String? get remoteInstanceId;

  @BuiltValueField(wireName: r'selection')
  PeerSelection get selection;

  @BuiltValueField(wireName: r'sameOperator')
  bool? get sameOperator;

  /// Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
  @BuiltValueField(wireName: r'reliability')
  PeerReliabilityEnum? get reliability;
  // enum reliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  @BuiltValueField(wireName: r'tokenSet')
  bool? get tokenSet;

  /// Prefix of the current fsp_ ingest key (RECEIVE peers)
  @BuiltValueField(wireName: r'ingestKeyPrefix')
  String? get ingestKeyPrefix;

  /// Dynamic sources: peer-{id}, peer-{id}-trk, peer-{id}-events
  @BuiltValueField(wireName: r'sourceIds')
  BuiltList<String>? get sourceIds;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  /// An exchange key is stored (132)
  @BuiltValueField(wireName: r'exchangeKeySet')
  bool? get exchangeKeySet;

  Peer._();

  factory Peer([void updates(PeerBuilder b)]) = _$Peer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PeerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Peer> get serializer => _$PeerSerializer();
}

class _$PeerSerializer implements PrimitiveSerializer<Peer> {
  @override
  final Iterable<Type> types = const [Peer, _$Peer];

  @override
  final String wireName = r'Peer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Peer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'baseUrl';
    yield serializers.serialize(
      object.baseUrl,
      specifiedType: const FullType(String),
    );
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(PeerModeEnum),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(String),
    );
    if (object.healthReason != null) {
      yield r'healthReason';
      yield serializers.serialize(
        object.healthReason,
        specifiedType: const FullType.nullable(PeerHealthReasonEnum),
      );
    }
    if (object.lastSeq != null) {
      yield r'lastSeq';
      yield serializers.serialize(
        object.lastSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lagSeq != null) {
      yield r'lagSeq';
      yield serializers.serialize(
        object.lagSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pinnedKid != null) {
      yield r'pinnedKid';
      yield serializers.serialize(
        object.pinnedKid,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.remoteInstanceId != null) {
      yield r'remoteInstanceId';
      yield serializers.serialize(
        object.remoteInstanceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'selection';
    yield serializers.serialize(
      object.selection,
      specifiedType: const FullType(PeerSelection),
    );
    if (object.sameOperator != null) {
      yield r'sameOperator';
      yield serializers.serialize(
        object.sameOperator,
        specifiedType: const FullType(bool),
      );
    }
    if (object.reliability != null) {
      yield r'reliability';
      yield serializers.serialize(
        object.reliability,
        specifiedType: const FullType(PeerReliabilityEnum),
      );
    }
    if (object.tokenSet != null) {
      yield r'tokenSet';
      yield serializers.serialize(
        object.tokenSet,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ingestKeyPrefix != null) {
      yield r'ingestKeyPrefix';
      yield serializers.serialize(
        object.ingestKeyPrefix,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceIds != null) {
      yield r'sourceIds';
      yield serializers.serialize(
        object.sourceIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.exchangeKeySet != null) {
      yield r'exchangeKeySet';
      yield serializers.serialize(
        object.exchangeKeySet,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Peer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PeerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'baseUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseUrl = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PeerModeEnum),
          ) as PeerModeEnum;
          result.mode = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.state = valueDes;
          break;
        case r'healthReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PeerHealthReasonEnum),
          ) as PeerHealthReasonEnum?;
          if (valueDes == null) continue;
          result.healthReason = valueDes;
          break;
        case r'lastSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastSeq = valueDes;
          break;
        case r'lagSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lagSeq = valueDes;
          break;
        case r'lastError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        case r'pinnedKid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pinnedKid = valueDes;
          break;
        case r'remoteInstanceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remoteInstanceId = valueDes;
          break;
        case r'selection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PeerSelection),
          ) as PeerSelection;
          result.selection.replace(valueDes);
          break;
        case r'sameOperator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.sameOperator = valueDes;
          break;
        case r'reliability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PeerReliabilityEnum),
          ) as PeerReliabilityEnum?;
          if (valueDes == null) continue;
          result.reliability = valueDes;
          break;
        case r'tokenSet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.tokenSet = valueDes;
          break;
        case r'ingestKeyPrefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ingestKeyPrefix = valueDes;
          break;
        case r'sourceIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sourceIds.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'exchangeKeySet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.exchangeKeySet = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Peer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeerBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class PeerModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PULL')
  static const PeerModeEnum PULL = _$peerModeEnum_PULL;
  @BuiltValueEnumConst(wireName: r'RECEIVE')
  static const PeerModeEnum RECEIVE = _$peerModeEnum_RECEIVE;

  static Serializer<PeerModeEnum> get serializer => _$peerModeEnumSerializer;

  const PeerModeEnum._(String name) : super(name);

  static BuiltSet<PeerModeEnum> get values => _$peerModeEnumValues;
  static PeerModeEnum valueOf(String name) => _$peerModeEnumValueOf(name);
}

class PeerHealthReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PEER_KEY_MISMATCH')
  static const PeerHealthReasonEnum PEER_KEY_MISMATCH =
      _$peerHealthReasonEnum_PEER_KEY_MISMATCH;
  @BuiltValueEnumConst(wireName: r'PEER_UNREACHABLE')
  static const PeerHealthReasonEnum PEER_UNREACHABLE =
      _$peerHealthReasonEnum_PEER_UNREACHABLE;
  @BuiltValueEnumConst(wireName: r'PEER_RESYNC')
  static const PeerHealthReasonEnum PEER_RESYNC =
      _$peerHealthReasonEnum_PEER_RESYNC;

  static Serializer<PeerHealthReasonEnum> get serializer =>
      _$peerHealthReasonEnumSerializer;

  const PeerHealthReasonEnum._(String name) : super(name);

  static BuiltSet<PeerHealthReasonEnum> get values =>
      _$peerHealthReasonEnumValues;
  static PeerHealthReasonEnum valueOf(String name) =>
      _$peerHealthReasonEnumValueOf(name);
}

/// Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
class PeerReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const PeerReliabilityEnum A = _$peerReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const PeerReliabilityEnum B = _$peerReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const PeerReliabilityEnum C = _$peerReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const PeerReliabilityEnum D = _$peerReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const PeerReliabilityEnum E = _$peerReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const PeerReliabilityEnum F = _$peerReliabilityEnum_F;

  static Serializer<PeerReliabilityEnum> get serializer =>
      _$peerReliabilityEnumSerializer;

  const PeerReliabilityEnum._(String name) : super(name);

  static BuiltSet<PeerReliabilityEnum> get values =>
      _$peerReliabilityEnumValues;
  static PeerReliabilityEnum valueOf(String name) =>
      _$peerReliabilityEnumValueOf(name);
}
