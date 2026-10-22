//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_social_section_narratives_inner.g.dart';

/// Top narrative
///
/// Properties:
/// * [narrativeId] - ULID identifier
/// * [title]
/// * [status]
/// * [velocity]
/// * [originConcentration]
/// * [evidenceGroupCount]
/// * [leadOverPhysicalSeconds] - Observed lead time (single case)
/// * [foundBy]
@BuiltValue()
abstract class SituationSocialSectionNarrativesInner
    implements
        Built<SituationSocialSectionNarrativesInner,
            SituationSocialSectionNarrativesInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'narrativeId')
  String get narrativeId;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'status')
  SituationSocialSectionNarrativesInnerStatusEnum get status;
  // enum statusEnum {  unassessed,  pending,  corroborated,  unobserved,  contradicted,  mixed,  insufficient-coverage,  };

  @BuiltValueField(wireName: r'velocity')
  num? get velocity;

  @BuiltValueField(wireName: r'originConcentration')
  num? get originConcentration;

  @BuiltValueField(wireName: r'evidenceGroupCount')
  int get evidenceGroupCount;

  /// Observed lead time (single case)
  @BuiltValueField(wireName: r'leadOverPhysicalSeconds')
  num? get leadOverPhysicalSeconds;

  @BuiltValueField(wireName: r'foundBy')
  SituationSocialSectionNarrativesInnerFoundByEnum? get foundBy;
  // enum foundByEnum {  organic,  cue,  };

  SituationSocialSectionNarrativesInner._();

  factory SituationSocialSectionNarrativesInner(
          [void updates(SituationSocialSectionNarrativesInnerBuilder b)]) =
      _$SituationSocialSectionNarrativesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationSocialSectionNarrativesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationSocialSectionNarrativesInner> get serializer =>
      _$SituationSocialSectionNarrativesInnerSerializer();
}

class _$SituationSocialSectionNarrativesInnerSerializer
    implements PrimitiveSerializer<SituationSocialSectionNarrativesInner> {
  @override
  final Iterable<Type> types = const [
    SituationSocialSectionNarrativesInner,
    _$SituationSocialSectionNarrativesInner
  ];

  @override
  final String wireName = r'SituationSocialSectionNarrativesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationSocialSectionNarrativesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'narrativeId';
    yield serializers.serialize(
      object.narrativeId,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType:
          const FullType(SituationSocialSectionNarrativesInnerStatusEnum),
    );
    if (object.velocity != null) {
      yield r'velocity';
      yield serializers.serialize(
        object.velocity,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.originConcentration != null) {
      yield r'originConcentration';
      yield serializers.serialize(
        object.originConcentration,
        specifiedType: const FullType(num),
      );
    }
    yield r'evidenceGroupCount';
    yield serializers.serialize(
      object.evidenceGroupCount,
      specifiedType: const FullType(int),
    );
    if (object.leadOverPhysicalSeconds != null) {
      yield r'leadOverPhysicalSeconds';
      yield serializers.serialize(
        object.leadOverPhysicalSeconds,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.foundBy != null) {
      yield r'foundBy';
      yield serializers.serialize(
        object.foundBy,
        specifiedType:
            const FullType(SituationSocialSectionNarrativesInnerFoundByEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationSocialSectionNarrativesInner object, {
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
    required SituationSocialSectionNarrativesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'narrativeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narrativeId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(SituationSocialSectionNarrativesInnerStatusEnum),
          ) as SituationSocialSectionNarrativesInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'velocity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.velocity = valueDes;
          break;
        case r'originConcentration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.originConcentration = valueDes;
          break;
        case r'evidenceGroupCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.evidenceGroupCount = valueDes;
          break;
        case r'leadOverPhysicalSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.leadOverPhysicalSeconds = valueDes;
          break;
        case r'foundBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                SituationSocialSectionNarrativesInnerFoundByEnum),
          ) as SituationSocialSectionNarrativesInnerFoundByEnum?;
          if (valueDes == null) continue;
          result.foundBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationSocialSectionNarrativesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationSocialSectionNarrativesInnerBuilder();
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

class SituationSocialSectionNarrativesInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unassessed')
  static const SituationSocialSectionNarrativesInnerStatusEnum unassessed =
      _$situationSocialSectionNarrativesInnerStatusEnum_unassessed;
  @BuiltValueEnumConst(wireName: r'pending')
  static const SituationSocialSectionNarrativesInnerStatusEnum pending =
      _$situationSocialSectionNarrativesInnerStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'corroborated')
  static const SituationSocialSectionNarrativesInnerStatusEnum corroborated =
      _$situationSocialSectionNarrativesInnerStatusEnum_corroborated;
  @BuiltValueEnumConst(wireName: r'unobserved')
  static const SituationSocialSectionNarrativesInnerStatusEnum unobserved =
      _$situationSocialSectionNarrativesInnerStatusEnum_unobserved;
  @BuiltValueEnumConst(wireName: r'contradicted')
  static const SituationSocialSectionNarrativesInnerStatusEnum contradicted =
      _$situationSocialSectionNarrativesInnerStatusEnum_contradicted;
  @BuiltValueEnumConst(wireName: r'mixed')
  static const SituationSocialSectionNarrativesInnerStatusEnum mixed =
      _$situationSocialSectionNarrativesInnerStatusEnum_mixed;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const SituationSocialSectionNarrativesInnerStatusEnum
      insufficientCoverage =
      _$situationSocialSectionNarrativesInnerStatusEnum_insufficientCoverage;

  static Serializer<SituationSocialSectionNarrativesInnerStatusEnum>
      get serializer =>
          _$situationSocialSectionNarrativesInnerStatusEnumSerializer;

  const SituationSocialSectionNarrativesInnerStatusEnum._(String name)
      : super(name);

  static BuiltSet<SituationSocialSectionNarrativesInnerStatusEnum> get values =>
      _$situationSocialSectionNarrativesInnerStatusEnumValues;
  static SituationSocialSectionNarrativesInnerStatusEnum valueOf(String name) =>
      _$situationSocialSectionNarrativesInnerStatusEnumValueOf(name);
}

class SituationSocialSectionNarrativesInnerFoundByEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'organic')
  static const SituationSocialSectionNarrativesInnerFoundByEnum organic =
      _$situationSocialSectionNarrativesInnerFoundByEnum_organic;
  @BuiltValueEnumConst(wireName: r'cue')
  static const SituationSocialSectionNarrativesInnerFoundByEnum cue =
      _$situationSocialSectionNarrativesInnerFoundByEnum_cue;

  static Serializer<SituationSocialSectionNarrativesInnerFoundByEnum>
      get serializer =>
          _$situationSocialSectionNarrativesInnerFoundByEnumSerializer;

  const SituationSocialSectionNarrativesInnerFoundByEnum._(String name)
      : super(name);

  static BuiltSet<SituationSocialSectionNarrativesInnerFoundByEnum>
      get values => _$situationSocialSectionNarrativesInnerFoundByEnumValues;
  static SituationSocialSectionNarrativesInnerFoundByEnum valueOf(
          String name) =>
      _$situationSocialSectionNarrativesInnerFoundByEnumValueOf(name);
}
