//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'context_summary_insights_inner.g.dart';

/// Finding, forecast or band change intersecting the viewport
///
/// Properties:
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [kind]
/// * [title]
/// * [probability]
/// * [estimativeTerm]
/// * [issuer] - `official`, `foresignal-ensemble` or a forecaster id
/// * [baseRate]
/// * [knowledgeCutoff]
/// * [at]
/// * [textOrigin]
@BuiltValue()
abstract class ContextSummaryInsightsInner
    implements
        Built<ContextSummaryInsightsInner, ContextSummaryInsightsInnerBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'kind')
  ContextSummaryInsightsInnerKindEnum get kind;
  // enum kindEnum {  finding,  forecast,  band-change,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'probability')
  num? get probability;

  @BuiltValueField(wireName: r'estimativeTerm')
  IcdTerm? get estimativeTerm;
  // enum estimativeTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  /// `official`, `foresignal-ensemble` or a forecaster id
  @BuiltValueField(wireName: r'issuer')
  String? get issuer;

  @BuiltValueField(wireName: r'baseRate')
  num? get baseRate;

  @BuiltValueField(wireName: r'knowledgeCutoff')
  Date? get knowledgeCutoff;

  @BuiltValueField(wireName: r'at')
  DateTime? get at;

  @BuiltValueField(wireName: r'textOrigin')
  ContextSummaryInsightsInnerTextOriginEnum? get textOrigin;
  // enum textOriginEnum {  deterministic,  llm,  };

  ContextSummaryInsightsInner._();

  factory ContextSummaryInsightsInner(
          [void updates(ContextSummaryInsightsInnerBuilder b)]) =
      _$ContextSummaryInsightsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContextSummaryInsightsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContextSummaryInsightsInner> get serializer =>
      _$ContextSummaryInsightsInnerSerializer();
}

class _$ContextSummaryInsightsInnerSerializer
    implements PrimitiveSerializer<ContextSummaryInsightsInner> {
  @override
  final Iterable<Type> types = const [
    ContextSummaryInsightsInner,
    _$ContextSummaryInsightsInner
  ];

  @override
  final String wireName = r'ContextSummaryInsightsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContextSummaryInsightsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(ContextSummaryInsightsInnerKindEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
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
    if (object.issuer != null) {
      yield r'issuer';
      yield serializers.serialize(
        object.issuer,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.baseRate != null) {
      yield r'baseRate';
      yield serializers.serialize(
        object.baseRate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.knowledgeCutoff != null) {
      yield r'knowledgeCutoff';
      yield serializers.serialize(
        object.knowledgeCutoff,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.at != null) {
      yield r'at';
      yield serializers.serialize(
        object.at,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.textOrigin != null) {
      yield r'textOrigin';
      yield serializers.serialize(
        object.textOrigin,
        specifiedType:
            const FullType(ContextSummaryInsightsInnerTextOriginEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContextSummaryInsightsInner object, {
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
    required ContextSummaryInsightsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContextSummaryInsightsInnerKindEnum),
          ) as ContextSummaryInsightsInnerKindEnum;
          result.kind = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'probability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.probability = valueDes;
          break;
        case r'estimativeTerm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IcdTerm),
          ) as IcdTerm?;
          if (valueDes == null) continue;
          result.estimativeTerm = valueDes;
          break;
        case r'issuer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.issuer = valueDes;
          break;
        case r'baseRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.baseRate = valueDes;
          break;
        case r'knowledgeCutoff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.knowledgeCutoff = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.at = valueDes;
          break;
        case r'textOrigin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                ContextSummaryInsightsInnerTextOriginEnum),
          ) as ContextSummaryInsightsInnerTextOriginEnum?;
          if (valueDes == null) continue;
          result.textOrigin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContextSummaryInsightsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextSummaryInsightsInnerBuilder();
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

class ContextSummaryInsightsInnerKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'finding')
  static const ContextSummaryInsightsInnerKindEnum finding =
      _$contextSummaryInsightsInnerKindEnum_finding;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const ContextSummaryInsightsInnerKindEnum forecast =
      _$contextSummaryInsightsInnerKindEnum_forecast;
  @BuiltValueEnumConst(wireName: r'band-change')
  static const ContextSummaryInsightsInnerKindEnum bandChange =
      _$contextSummaryInsightsInnerKindEnum_bandChange;

  static Serializer<ContextSummaryInsightsInnerKindEnum> get serializer =>
      _$contextSummaryInsightsInnerKindEnumSerializer;

  const ContextSummaryInsightsInnerKindEnum._(String name) : super(name);

  static BuiltSet<ContextSummaryInsightsInnerKindEnum> get values =>
      _$contextSummaryInsightsInnerKindEnumValues;
  static ContextSummaryInsightsInnerKindEnum valueOf(String name) =>
      _$contextSummaryInsightsInnerKindEnumValueOf(name);
}

class ContextSummaryInsightsInnerTextOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'deterministic')
  static const ContextSummaryInsightsInnerTextOriginEnum deterministic =
      _$contextSummaryInsightsInnerTextOriginEnum_deterministic;
  @BuiltValueEnumConst(wireName: r'llm')
  static const ContextSummaryInsightsInnerTextOriginEnum llm =
      _$contextSummaryInsightsInnerTextOriginEnum_llm;

  static Serializer<ContextSummaryInsightsInnerTextOriginEnum> get serializer =>
      _$contextSummaryInsightsInnerTextOriginEnumSerializer;

  const ContextSummaryInsightsInnerTextOriginEnum._(String name) : super(name);

  static BuiltSet<ContextSummaryInsightsInnerTextOriginEnum> get values =>
      _$contextSummaryInsightsInnerTextOriginEnumValues;
  static ContextSummaryInsightsInnerTextOriginEnum valueOf(String name) =>
      _$contextSummaryInsightsInnerTextOriginEnumValueOf(name);
}
