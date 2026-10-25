//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_social_narratives_selector.g.dart';

/// Chronicle layer `social-narratives` (137): narratives, claims and comparisons matching topics, places or situations; history kept after posts expire
///
/// Properties:
/// * [type]
/// * [topicIds]
/// * [placeIds]
/// * [regionCodes]
/// * [situationIds]
/// * [statuses]
/// * [keepPostText] - Keep member post text in chronicle storage (else claim summaries and counts only)
@BuiltValue()
abstract class ChronicleSocialNarrativesSelector
    implements
        Built<
          ChronicleSocialNarrativesSelector,
          ChronicleSocialNarrativesSelectorBuilder
        > {
  @BuiltValueField(wireName: r'type')
  ChronicleSocialNarrativesSelectorTypeEnum get type;
  // enum typeEnum {  social-narratives,  };

  @BuiltValueField(wireName: r'topicIds')
  BuiltList<String>? get topicIds;

  @BuiltValueField(wireName: r'placeIds')
  BuiltList<String>? get placeIds;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'situationIds')
  BuiltList<String>? get situationIds;

  @BuiltValueField(wireName: r'statuses')
  BuiltList<ChronicleSocialNarrativesSelectorStatusesEnum>? get statuses;
  // enum statusesEnum {  unassessed,  pending,  corroborated,  unobserved,  contradicted,  mixed,  insufficient-coverage,  };

  /// Keep member post text in chronicle storage (else claim summaries and counts only)
  @BuiltValueField(wireName: r'keepPostText')
  bool? get keepPostText;

  ChronicleSocialNarrativesSelector._();

  factory ChronicleSocialNarrativesSelector([
    void updates(ChronicleSocialNarrativesSelectorBuilder b),
  ]) = _$ChronicleSocialNarrativesSelector;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSocialNarrativesSelectorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSocialNarrativesSelector> get serializer =>
      _$ChronicleSocialNarrativesSelectorSerializer();
}

class _$ChronicleSocialNarrativesSelectorSerializer
    implements PrimitiveSerializer<ChronicleSocialNarrativesSelector> {
  @override
  final Iterable<Type> types = const [
    ChronicleSocialNarrativesSelector,
    _$ChronicleSocialNarrativesSelector,
  ];

  @override
  final String wireName = r'ChronicleSocialNarrativesSelector';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSocialNarrativesSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ChronicleSocialNarrativesSelectorTypeEnum),
    );
    if (object.topicIds != null) {
      yield r'topicIds';
      yield serializers.serialize(
        object.topicIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.placeIds != null) {
      yield r'placeIds';
      yield serializers.serialize(
        object.placeIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.situationIds != null) {
      yield r'situationIds';
      yield serializers.serialize(
        object.situationIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.statuses != null) {
      yield r'statuses';
      yield serializers.serialize(
        object.statuses,
        specifiedType: const FullType(BuiltList, [
          FullType(ChronicleSocialNarrativesSelectorStatusesEnum),
        ]),
      );
    }
    if (object.keepPostText != null) {
      yield r'keepPostText';
      yield serializers.serialize(
        object.keepPostText,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSocialNarrativesSelector object, {
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
    required ChronicleSocialNarrativesSelectorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ChronicleSocialNarrativesSelectorTypeEnum,
                    ),
                  )
                  as ChronicleSocialNarrativesSelectorTypeEnum;
          result.type = valueDes;
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
        case r'placeIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.placeIds.replace(valueDes);
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
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
        case r'statuses':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ChronicleSocialNarrativesSelectorStatusesEnum),
                    ]),
                  )
                  as BuiltList<ChronicleSocialNarrativesSelectorStatusesEnum>?;
          if (valueDes == null) continue;
          result.statuses.replace(valueDes);
          break;
        case r'keepPostText':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.keepPostText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSocialNarrativesSelector deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSocialNarrativesSelectorBuilder();
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

class ChronicleSocialNarrativesSelectorTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'social-narratives')
  static const ChronicleSocialNarrativesSelectorTypeEnum socialNarratives =
      _$chronicleSocialNarrativesSelectorTypeEnum_socialNarratives;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChronicleSocialNarrativesSelectorTypeEnum unknownDefaultOpenApi =
      _$chronicleSocialNarrativesSelectorTypeEnum_unknownDefaultOpenApi;

  static Serializer<ChronicleSocialNarrativesSelectorTypeEnum> get serializer =>
      _$chronicleSocialNarrativesSelectorTypeEnumSerializer;

  const ChronicleSocialNarrativesSelectorTypeEnum._(String name) : super(name);

  static BuiltSet<ChronicleSocialNarrativesSelectorTypeEnum> get values =>
      _$chronicleSocialNarrativesSelectorTypeEnumValues;
  static ChronicleSocialNarrativesSelectorTypeEnum valueOf(String name) =>
      _$chronicleSocialNarrativesSelectorTypeEnumValueOf(name);
}

class ChronicleSocialNarrativesSelectorStatusesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unassessed')
  static const ChronicleSocialNarrativesSelectorStatusesEnum unassessed =
      _$chronicleSocialNarrativesSelectorStatusesEnum_unassessed;
  @BuiltValueEnumConst(wireName: r'pending')
  static const ChronicleSocialNarrativesSelectorStatusesEnum pending =
      _$chronicleSocialNarrativesSelectorStatusesEnum_pending;
  @BuiltValueEnumConst(wireName: r'corroborated')
  static const ChronicleSocialNarrativesSelectorStatusesEnum corroborated =
      _$chronicleSocialNarrativesSelectorStatusesEnum_corroborated;
  @BuiltValueEnumConst(wireName: r'unobserved')
  static const ChronicleSocialNarrativesSelectorStatusesEnum unobserved =
      _$chronicleSocialNarrativesSelectorStatusesEnum_unobserved;
  @BuiltValueEnumConst(wireName: r'contradicted')
  static const ChronicleSocialNarrativesSelectorStatusesEnum contradicted =
      _$chronicleSocialNarrativesSelectorStatusesEnum_contradicted;
  @BuiltValueEnumConst(wireName: r'mixed')
  static const ChronicleSocialNarrativesSelectorStatusesEnum mixed =
      _$chronicleSocialNarrativesSelectorStatusesEnum_mixed;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const ChronicleSocialNarrativesSelectorStatusesEnum
  insufficientCoverage =
      _$chronicleSocialNarrativesSelectorStatusesEnum_insufficientCoverage;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChronicleSocialNarrativesSelectorStatusesEnum
  unknownDefaultOpenApi =
      _$chronicleSocialNarrativesSelectorStatusesEnum_unknownDefaultOpenApi;

  static Serializer<ChronicleSocialNarrativesSelectorStatusesEnum>
  get serializer => _$chronicleSocialNarrativesSelectorStatusesEnumSerializer;

  const ChronicleSocialNarrativesSelectorStatusesEnum._(String name)
    : super(name);

  static BuiltSet<ChronicleSocialNarrativesSelectorStatusesEnum> get values =>
      _$chronicleSocialNarrativesSelectorStatusesEnumValues;
  static ChronicleSocialNarrativesSelectorStatusesEnum valueOf(String name) =>
      _$chronicleSocialNarrativesSelectorStatusesEnumValueOf(name);
}
