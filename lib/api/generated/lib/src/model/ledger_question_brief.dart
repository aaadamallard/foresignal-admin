//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:foresignal_api/src/model/quantiles.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/ledger_question_brief_forecasters_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ledger_question_brief.g.dart';

/// Compact view of a 122 ledger question with its ensemble, issuer and cutoff
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [title]
/// * [type]
/// * [status]
/// * [closesAt]
/// * [resolveBy]
/// * [resolutionCriteria]
/// * [probability]
/// * [estimativeTerm]
/// * [distribution] - Ensemble probability per outcome (multiple, ordered)
/// * [quantiles]
/// * [issuer] - `foresignal-ensemble` or a forecaster id
/// * [forecasters]
/// * [knowledgeCutoff]
/// * [baseRate]
/// * [updatedAt]
@BuiltValue()
abstract class LedgerQuestionBrief
    implements Built<LedgerQuestionBrief, LedgerQuestionBriefBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'type')
  LedgerQuestionBriefTypeEnum get type;
  // enum typeEnum {  binary,  multiple,  ordered,  numeric,  };

  @BuiltValueField(wireName: r'status')
  LedgerQuestionBriefStatusEnum get status;
  // enum statusEnum {  open,  closed,  resolved,  annulled,  };

  @BuiltValueField(wireName: r'closesAt')
  DateTime? get closesAt;

  @BuiltValueField(wireName: r'resolveBy')
  DateTime? get resolveBy;

  @BuiltValueField(wireName: r'resolutionCriteria')
  String? get resolutionCriteria;

  @BuiltValueField(wireName: r'probability')
  num? get probability;

  @BuiltValueField(wireName: r'estimativeTerm')
  IcdTerm? get estimativeTerm;
  // enum estimativeTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  /// Ensemble probability per outcome (multiple, ordered)
  @BuiltValueField(wireName: r'distribution')
  JsonObject? get distribution;

  @BuiltValueField(wireName: r'quantiles')
  Quantiles? get quantiles;

  /// `foresignal-ensemble` or a forecaster id
  @BuiltValueField(wireName: r'issuer')
  String get issuer;

  @BuiltValueField(wireName: r'forecasters')
  BuiltList<LedgerQuestionBriefForecastersInner>? get forecasters;

  @BuiltValueField(wireName: r'knowledgeCutoff')
  Date? get knowledgeCutoff;

  @BuiltValueField(wireName: r'baseRate')
  num? get baseRate;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  LedgerQuestionBrief._();

  factory LedgerQuestionBrief([void updates(LedgerQuestionBriefBuilder b)]) =
      _$LedgerQuestionBrief;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LedgerQuestionBriefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LedgerQuestionBrief> get serializer =>
      _$LedgerQuestionBriefSerializer();
}

class _$LedgerQuestionBriefSerializer
    implements PrimitiveSerializer<LedgerQuestionBrief> {
  @override
  final Iterable<Type> types = const [
    LedgerQuestionBrief,
    _$LedgerQuestionBrief,
  ];

  @override
  final String wireName = r'LedgerQuestionBrief';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LedgerQuestionBrief object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(LedgerQuestionBriefTypeEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(LedgerQuestionBriefStatusEnum),
    );
    if (object.closesAt != null) {
      yield r'closesAt';
      yield serializers.serialize(
        object.closesAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.resolveBy != null) {
      yield r'resolveBy';
      yield serializers.serialize(
        object.resolveBy,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.resolutionCriteria != null) {
      yield r'resolutionCriteria';
      yield serializers.serialize(
        object.resolutionCriteria,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.probability != null) {
      yield r'probability';
      yield serializers.serialize(
        object.probability,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.estimativeTerm != null) {
      yield r'estimativeTerm';
      yield serializers.serialize(
        object.estimativeTerm,
        specifiedType: const FullType.nullable(IcdTerm),
      );
    }
    if (object.distribution != null) {
      yield r'distribution';
      yield serializers.serialize(
        object.distribution,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.quantiles != null) {
      yield r'quantiles';
      yield serializers.serialize(
        object.quantiles,
        specifiedType: const FullType.nullable(Quantiles),
      );
    }
    yield r'issuer';
    yield serializers.serialize(
      object.issuer,
      specifiedType: const FullType(String),
    );
    if (object.forecasters != null) {
      yield r'forecasters';
      yield serializers.serialize(
        object.forecasters,
        specifiedType: const FullType(BuiltList, [
          FullType(LedgerQuestionBriefForecastersInner),
        ]),
      );
    }
    if (object.knowledgeCutoff != null) {
      yield r'knowledgeCutoff';
      yield serializers.serialize(
        object.knowledgeCutoff,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.baseRate != null) {
      yield r'baseRate';
      yield serializers.serialize(
        object.baseRate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LedgerQuestionBrief object, {
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
    required LedgerQuestionBriefBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LedgerQuestionBriefTypeEnum),
                  )
                  as LedgerQuestionBriefTypeEnum;
          result.type = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      LedgerQuestionBriefStatusEnum,
                    ),
                  )
                  as LedgerQuestionBriefStatusEnum;
          result.status = valueDes;
          break;
        case r'closesAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.closesAt = valueDes;
          break;
        case r'resolveBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.resolveBy = valueDes;
          break;
        case r'resolutionCriteria':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.resolutionCriteria = valueDes;
          break;
        case r'probability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.probability = valueDes;
          break;
        case r'estimativeTerm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IcdTerm),
                  )
                  as IcdTerm?;
          if (valueDes == null) continue;
          result.estimativeTerm = valueDes;
          break;
        case r'distribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.distribution = valueDes;
          break;
        case r'quantiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Quantiles),
                  )
                  as Quantiles?;
          if (valueDes == null) continue;
          result.quantiles.replace(valueDes);
          break;
        case r'issuer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.issuer = valueDes;
          break;
        case r'forecasters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(LedgerQuestionBriefForecastersInner),
                    ]),
                  )
                  as BuiltList<LedgerQuestionBriefForecastersInner>?;
          if (valueDes == null) continue;
          result.forecasters.replace(valueDes);
          break;
        case r'knowledgeCutoff':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Date),
                  )
                  as Date?;
          if (valueDes == null) continue;
          result.knowledgeCutoff = valueDes;
          break;
        case r'baseRate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.baseRate = valueDes;
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
  LedgerQuestionBrief deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LedgerQuestionBriefBuilder();
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

class LedgerQuestionBriefTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'binary')
  static const LedgerQuestionBriefTypeEnum binary =
      _$ledgerQuestionBriefTypeEnum_binary;
  @BuiltValueEnumConst(wireName: r'multiple')
  static const LedgerQuestionBriefTypeEnum multiple =
      _$ledgerQuestionBriefTypeEnum_multiple;
  @BuiltValueEnumConst(wireName: r'ordered')
  static const LedgerQuestionBriefTypeEnum ordered =
      _$ledgerQuestionBriefTypeEnum_ordered;
  @BuiltValueEnumConst(wireName: r'numeric')
  static const LedgerQuestionBriefTypeEnum numeric =
      _$ledgerQuestionBriefTypeEnum_numeric;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LedgerQuestionBriefTypeEnum unknownDefaultOpenApi =
      _$ledgerQuestionBriefTypeEnum_unknownDefaultOpenApi;

  static Serializer<LedgerQuestionBriefTypeEnum> get serializer =>
      _$ledgerQuestionBriefTypeEnumSerializer;

  const LedgerQuestionBriefTypeEnum._(String name) : super(name);

  static BuiltSet<LedgerQuestionBriefTypeEnum> get values =>
      _$ledgerQuestionBriefTypeEnumValues;
  static LedgerQuestionBriefTypeEnum valueOf(String name) =>
      _$ledgerQuestionBriefTypeEnumValueOf(name);
}

class LedgerQuestionBriefStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const LedgerQuestionBriefStatusEnum open =
      _$ledgerQuestionBriefStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'closed')
  static const LedgerQuestionBriefStatusEnum closed =
      _$ledgerQuestionBriefStatusEnum_closed;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const LedgerQuestionBriefStatusEnum resolved =
      _$ledgerQuestionBriefStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'annulled')
  static const LedgerQuestionBriefStatusEnum annulled =
      _$ledgerQuestionBriefStatusEnum_annulled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LedgerQuestionBriefStatusEnum unknownDefaultOpenApi =
      _$ledgerQuestionBriefStatusEnum_unknownDefaultOpenApi;

  static Serializer<LedgerQuestionBriefStatusEnum> get serializer =>
      _$ledgerQuestionBriefStatusEnumSerializer;

  const LedgerQuestionBriefStatusEnum._(String name) : super(name);

  static BuiltSet<LedgerQuestionBriefStatusEnum> get values =>
      _$ledgerQuestionBriefStatusEnumValues;
  static LedgerQuestionBriefStatusEnum valueOf(String name) =>
      _$ledgerQuestionBriefStatusEnumValueOf(name);
}
