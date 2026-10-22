//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_social_section_narratives_inner.dart';
import 'package:foresignal_api/src/model/situation_social_section_attention_gap.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_social_section.g.dart';

/// What people are saying about a situation, kept apart from physical corroboration (137)
///
/// Properties:
/// * [narratives]
/// * [socialEvidenceGroups] - Narrative evidence groups, counted separately from physical corroboration
/// * [attentionGap]
/// * [socialCoverageOk] - 135 social observability for the situation's regions
/// * [updatedAt]
@BuiltValue()
abstract class SituationSocialSection
    implements Built<SituationSocialSection, SituationSocialSectionBuilder> {
  @BuiltValueField(wireName: r'narratives')
  BuiltList<SituationSocialSectionNarrativesInner> get narratives;

  /// Narrative evidence groups, counted separately from physical corroboration
  @BuiltValueField(wireName: r'socialEvidenceGroups')
  int get socialEvidenceGroups;

  @BuiltValueField(wireName: r'attentionGap')
  SituationSocialSectionAttentionGap? get attentionGap;

  /// 135 social observability for the situation's regions
  @BuiltValueField(wireName: r'socialCoverageOk')
  bool get socialCoverageOk;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  SituationSocialSection._();

  factory SituationSocialSection([
    void updates(SituationSocialSectionBuilder b),
  ]) = _$SituationSocialSection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationSocialSectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationSocialSection> get serializer =>
      _$SituationSocialSectionSerializer();
}

class _$SituationSocialSectionSerializer
    implements PrimitiveSerializer<SituationSocialSection> {
  @override
  final Iterable<Type> types = const [
    SituationSocialSection,
    _$SituationSocialSection,
  ];

  @override
  final String wireName = r'SituationSocialSection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationSocialSection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'narratives';
    yield serializers.serialize(
      object.narratives,
      specifiedType: const FullType(BuiltList, [
        FullType(SituationSocialSectionNarrativesInner),
      ]),
    );
    yield r'socialEvidenceGroups';
    yield serializers.serialize(
      object.socialEvidenceGroups,
      specifiedType: const FullType(int),
    );
    if (object.attentionGap != null) {
      yield r'attentionGap';
      yield serializers.serialize(
        object.attentionGap,
        specifiedType: const FullType.nullable(
          SituationSocialSectionAttentionGap,
        ),
      );
    }
    yield r'socialCoverageOk';
    yield serializers.serialize(
      object.socialCoverageOk,
      specifiedType: const FullType(bool),
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
    SituationSocialSection object, {
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
    required SituationSocialSectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'narratives':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SituationSocialSectionNarrativesInner),
                    ]),
                  )
                  as BuiltList<SituationSocialSectionNarrativesInner>;
          result.narratives.replace(valueDes);
          break;
        case r'socialEvidenceGroups':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.socialEvidenceGroups = valueDes;
          break;
        case r'attentionGap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SituationSocialSectionAttentionGap,
                    ),
                  )
                  as SituationSocialSectionAttentionGap?;
          if (valueDes == null) continue;
          result.attentionGap.replace(valueDes);
          break;
        case r'socialCoverageOk':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.socialCoverageOk = valueDes;
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
  SituationSocialSection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationSocialSectionBuilder();
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
