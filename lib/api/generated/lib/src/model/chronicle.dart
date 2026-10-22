//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_archive.dart';
import 'package:foresignal_api/src/model/chronicle_area.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:foresignal_api/src/model/chronicle_layer.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle.g.dart';

/// A named, shareable monitoring thread that records its own history while active
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [displayId]
/// * [name]
/// * [description]
/// * [owner]
/// * [visibility]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [status]
/// * [area]
/// * [startedAt]
/// * [stoppedAt]
/// * [captureFromSeq]
/// * [captureToSeq]
/// * [retention] - `forever` (default) or an ISO-8601 duration kept after stop
/// * [sizeCapBytes]
/// * [bytesUsed]
/// * [capState] - `warning` at 90% of the cap; `exceeded` switches full and downsampled layers to events-only
/// * [workspaceId] - ULID identifier
/// * [situationIds]
/// * [hypothesisSetIds]
/// * [investigationIds]
/// * [topicIds] - 117 attention topic ids
/// * [origin]
/// * [proposalId] - ULID identifier
/// * [layers]
/// * [archive]
/// * [discoverability] - Owner's discovery setting, capped by TLP (134): the effective value
/// * [revealTitle] - Show the title in opaque links (134)
/// * [revealOwner] - Show the owner handle in opaque links (134)
/// * [unreadCount] - Unread thread items for the caller
/// * [tags] - Caller's visible tags
/// * [version] - Optimistic-lock version; sent as ETag
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class Chronicle implements Built<Chronicle, ChronicleBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'displayId')
  String get displayId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'owner')
  PrincipalSummary get owner;

  @BuiltValueField(wireName: r'visibility')
  Visibility get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  @BuiltValueField(wireName: r'status')
  ChronicleStatusEnum get status;
  // enum statusEnum {  proposed,  active,  paused,  stopped,  archived,  };

  @BuiltValueField(wireName: r'area')
  ChronicleArea? get area;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'stoppedAt')
  DateTime? get stoppedAt;

  @BuiltValueField(wireName: r'captureFromSeq')
  int? get captureFromSeq;

  @BuiltValueField(wireName: r'captureToSeq')
  int? get captureToSeq;

  /// `forever` (default) or an ISO-8601 duration kept after stop
  @BuiltValueField(wireName: r'retention')
  String get retention;

  @BuiltValueField(wireName: r'sizeCapBytes')
  int get sizeCapBytes;

  @BuiltValueField(wireName: r'bytesUsed')
  int get bytesUsed;

  /// `warning` at 90% of the cap; `exceeded` switches full and downsampled layers to events-only
  @BuiltValueField(wireName: r'capState')
  ChronicleCapStateEnum? get capState;
  // enum capStateEnum {  ok,  warning,  exceeded,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'workspaceId')
  String get workspaceId;

  @BuiltValueField(wireName: r'situationIds')
  BuiltList<String>? get situationIds;

  @BuiltValueField(wireName: r'hypothesisSetIds')
  BuiltList<String>? get hypothesisSetIds;

  @BuiltValueField(wireName: r'investigationIds')
  BuiltList<String>? get investigationIds;

  /// 117 attention topic ids
  @BuiltValueField(wireName: r'topicIds')
  BuiltList<String>? get topicIds;

  @BuiltValueField(wireName: r'origin')
  ChronicleOriginEnum get origin;
  // enum originEnum {  operator,  agent,  analyst,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'proposalId')
  String? get proposalId;

  @BuiltValueField(wireName: r'layers')
  BuiltList<ChronicleLayer> get layers;

  @BuiltValueField(wireName: r'archive')
  ChronicleArchive? get archive;

  /// Owner's discovery setting, capped by TLP (134): the effective value
  @BuiltValueField(wireName: r'discoverability')
  ChronicleDiscoverabilityEnum? get discoverability;
  // enum discoverabilityEnum {  none,  instance,  network,  };

  /// Show the title in opaque links (134)
  @BuiltValueField(wireName: r'revealTitle')
  bool? get revealTitle;

  /// Show the owner handle in opaque links (134)
  @BuiltValueField(wireName: r'revealOwner')
  bool? get revealOwner;

  /// Unread thread items for the caller
  @BuiltValueField(wireName: r'unreadCount')
  int? get unreadCount;

  /// Caller's visible tags
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Optimistic-lock version; sent as ETag
  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  Chronicle._();

  factory Chronicle([void updates(ChronicleBuilder b)]) = _$Chronicle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Chronicle> get serializer => _$ChronicleSerializer();
}

class _$ChronicleSerializer implements PrimitiveSerializer<Chronicle> {
  @override
  final Iterable<Type> types = const [Chronicle, _$Chronicle];

  @override
  final String wireName = r'Chronicle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Chronicle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'displayId';
    yield serializers.serialize(
      object.displayId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'owner';
    yield serializers.serialize(
      object.owner,
      specifiedType: const FullType(PrincipalSummary),
    );
    yield r'visibility';
    yield serializers.serialize(
      object.visibility,
      specifiedType: const FullType(Visibility),
    );
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ChronicleStatusEnum),
    );
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType.nullable(ChronicleArea),
      );
    }
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.stoppedAt != null) {
      yield r'stoppedAt';
      yield serializers.serialize(
        object.stoppedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.captureFromSeq != null) {
      yield r'captureFromSeq';
      yield serializers.serialize(
        object.captureFromSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.captureToSeq != null) {
      yield r'captureToSeq';
      yield serializers.serialize(
        object.captureToSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'retention';
    yield serializers.serialize(
      object.retention,
      specifiedType: const FullType(String),
    );
    yield r'sizeCapBytes';
    yield serializers.serialize(
      object.sizeCapBytes,
      specifiedType: const FullType(int),
    );
    yield r'bytesUsed';
    yield serializers.serialize(
      object.bytesUsed,
      specifiedType: const FullType(int),
    );
    if (object.capState != null) {
      yield r'capState';
      yield serializers.serialize(
        object.capState,
        specifiedType: const FullType(ChronicleCapStateEnum),
      );
    }
    yield r'workspaceId';
    yield serializers.serialize(
      object.workspaceId,
      specifiedType: const FullType(String),
    );
    if (object.situationIds != null) {
      yield r'situationIds';
      yield serializers.serialize(
        object.situationIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.hypothesisSetIds != null) {
      yield r'hypothesisSetIds';
      yield serializers.serialize(
        object.hypothesisSetIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.investigationIds != null) {
      yield r'investigationIds';
      yield serializers.serialize(
        object.investigationIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.topicIds != null) {
      yield r'topicIds';
      yield serializers.serialize(
        object.topicIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(ChronicleOriginEnum),
    );
    if (object.proposalId != null) {
      yield r'proposalId';
      yield serializers.serialize(
        object.proposalId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'layers';
    yield serializers.serialize(
      object.layers,
      specifiedType: const FullType(BuiltList, [FullType(ChronicleLayer)]),
    );
    if (object.archive != null) {
      yield r'archive';
      yield serializers.serialize(
        object.archive,
        specifiedType: const FullType.nullable(ChronicleArchive),
      );
    }
    if (object.discoverability != null) {
      yield r'discoverability';
      yield serializers.serialize(
        object.discoverability,
        specifiedType: const FullType(ChronicleDiscoverabilityEnum),
      );
    }
    if (object.revealTitle != null) {
      yield r'revealTitle';
      yield serializers.serialize(
        object.revealTitle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.revealOwner != null) {
      yield r'revealOwner';
      yield serializers.serialize(
        object.revealOwner,
        specifiedType: const FullType(bool),
      );
    }
    if (object.unreadCount != null) {
      yield r'unreadCount';
      yield serializers.serialize(
        object.unreadCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Chronicle object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChronicleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'displayId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.displayId = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'owner':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrincipalSummary),
                  )
                  as PrincipalSummary;
          result.owner.replace(valueDes);
          break;
        case r'visibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Visibility),
                  )
                  as Visibility;
          result.visibility = valueDes;
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tlp = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ChronicleStatusEnum),
                  )
                  as ChronicleStatusEnum;
          result.status = valueDes;
          break;
        case r'area':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChronicleArea),
                  )
                  as ChronicleArea?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        case r'stoppedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.stoppedAt = valueDes;
          break;
        case r'captureFromSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.captureFromSeq = valueDes;
          break;
        case r'captureToSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.captureToSeq = valueDes;
          break;
        case r'retention':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.retention = valueDes;
          break;
        case r'sizeCapBytes':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.sizeCapBytes = valueDes;
          break;
        case r'bytesUsed':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.bytesUsed = valueDes;
          break;
        case r'capState':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleCapStateEnum,
                    ),
                  )
                  as ChronicleCapStateEnum?;
          if (valueDes == null) continue;
          result.capState = valueDes;
          break;
        case r'workspaceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.workspaceId = valueDes;
          break;
        case r'situationIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.situationIds.replace(valueDes);
          break;
        case r'hypothesisSetIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.hypothesisSetIds.replace(valueDes);
          break;
        case r'investigationIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.investigationIds.replace(valueDes);
          break;
        case r'topicIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.topicIds.replace(valueDes);
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ChronicleOriginEnum),
                  )
                  as ChronicleOriginEnum;
          result.origin = valueDes;
          break;
        case r'proposalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.proposalId = valueDes;
          break;
        case r'layers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ChronicleLayer),
                    ]),
                  )
                  as BuiltList<ChronicleLayer>;
          result.layers.replace(valueDes);
          break;
        case r'archive':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChronicleArchive),
                  )
                  as ChronicleArchive?;
          if (valueDes == null) continue;
          result.archive.replace(valueDes);
          break;
        case r'discoverability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleDiscoverabilityEnum,
                    ),
                  )
                  as ChronicleDiscoverabilityEnum?;
          if (valueDes == null) continue;
          result.discoverability = valueDes;
          break;
        case r'revealTitle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.revealTitle = valueDes;
          break;
        case r'revealOwner':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.revealOwner = valueDes;
          break;
        case r'unreadCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.unreadCount = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Chronicle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleBuilder();
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

class ChronicleStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'proposed')
  static const ChronicleStatusEnum proposed = _$chronicleStatusEnum_proposed;
  @BuiltValueEnumConst(wireName: r'active')
  static const ChronicleStatusEnum active = _$chronicleStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'paused')
  static const ChronicleStatusEnum paused = _$chronicleStatusEnum_paused;
  @BuiltValueEnumConst(wireName: r'stopped')
  static const ChronicleStatusEnum stopped = _$chronicleStatusEnum_stopped;
  @BuiltValueEnumConst(wireName: r'archived')
  static const ChronicleStatusEnum archived = _$chronicleStatusEnum_archived;

  static Serializer<ChronicleStatusEnum> get serializer =>
      _$chronicleStatusEnumSerializer;

  const ChronicleStatusEnum._(String name) : super(name);

  static BuiltSet<ChronicleStatusEnum> get values =>
      _$chronicleStatusEnumValues;
  static ChronicleStatusEnum valueOf(String name) =>
      _$chronicleStatusEnumValueOf(name);
}

/// `warning` at 90% of the cap; `exceeded` switches full and downsampled layers to events-only
class ChronicleCapStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ChronicleCapStateEnum ok = _$chronicleCapStateEnum_ok;
  @BuiltValueEnumConst(wireName: r'warning')
  static const ChronicleCapStateEnum warning = _$chronicleCapStateEnum_warning;
  @BuiltValueEnumConst(wireName: r'exceeded')
  static const ChronicleCapStateEnum exceeded =
      _$chronicleCapStateEnum_exceeded;

  static Serializer<ChronicleCapStateEnum> get serializer =>
      _$chronicleCapStateEnumSerializer;

  const ChronicleCapStateEnum._(String name) : super(name);

  static BuiltSet<ChronicleCapStateEnum> get values =>
      _$chronicleCapStateEnumValues;
  static ChronicleCapStateEnum valueOf(String name) =>
      _$chronicleCapStateEnumValueOf(name);
}

class ChronicleOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'operator')
  static const ChronicleOriginEnum operator_ = _$chronicleOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'agent')
  static const ChronicleOriginEnum agent = _$chronicleOriginEnum_agent;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const ChronicleOriginEnum analyst = _$chronicleOriginEnum_analyst;

  static Serializer<ChronicleOriginEnum> get serializer =>
      _$chronicleOriginEnumSerializer;

  const ChronicleOriginEnum._(String name) : super(name);

  static BuiltSet<ChronicleOriginEnum> get values =>
      _$chronicleOriginEnumValues;
  static ChronicleOriginEnum valueOf(String name) =>
      _$chronicleOriginEnumValueOf(name);
}

/// Owner's discovery setting, capped by TLP (134): the effective value
class ChronicleDiscoverabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const ChronicleDiscoverabilityEnum none =
      _$chronicleDiscoverabilityEnum_none;
  @BuiltValueEnumConst(wireName: r'instance')
  static const ChronicleDiscoverabilityEnum instance =
      _$chronicleDiscoverabilityEnum_instance;
  @BuiltValueEnumConst(wireName: r'network')
  static const ChronicleDiscoverabilityEnum network =
      _$chronicleDiscoverabilityEnum_network;

  static Serializer<ChronicleDiscoverabilityEnum> get serializer =>
      _$chronicleDiscoverabilityEnumSerializer;

  const ChronicleDiscoverabilityEnum._(String name) : super(name);

  static BuiltSet<ChronicleDiscoverabilityEnum> get values =>
      _$chronicleDiscoverabilityEnumValues;
  static ChronicleDiscoverabilityEnum valueOf(String name) =>
      _$chronicleDiscoverabilityEnumValueOf(name);
}
