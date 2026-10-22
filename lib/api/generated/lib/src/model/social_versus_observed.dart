//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/social_versus_observed_lead_times_inner.dart';
import 'package:foresignal_api/src/model/social_versus_observed_narratives_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_versus_observed.g.dart';

/// Packet and assessment section \"What people are saying versus what we observe\" (137; ICD 203 wording rules apply)
///
/// Properties:
/// * [narrativesByStatus] - Status → narrative count
/// * [narratives]
/// * [attentionGapFindingIds]
/// * [leadTimes] - Out-of-sample statistics only
/// * [mediaReuseFindingIds]
/// * [coordinationFindingIds]
/// * [caveats]
@BuiltValue()
abstract class SocialVersusObserved
    implements Built<SocialVersusObserved, SocialVersusObservedBuilder> {
  /// Status → narrative count
  @BuiltValueField(wireName: r'narrativesByStatus')
  BuiltMap<String, int> get narrativesByStatus;

  @BuiltValueField(wireName: r'narratives')
  BuiltList<SocialVersusObservedNarrativesInner> get narratives;

  @BuiltValueField(wireName: r'attentionGapFindingIds')
  BuiltList<String>? get attentionGapFindingIds;

  /// Out-of-sample statistics only
  @BuiltValueField(wireName: r'leadTimes')
  BuiltList<SocialVersusObservedLeadTimesInner>? get leadTimes;

  @BuiltValueField(wireName: r'mediaReuseFindingIds')
  BuiltList<String>? get mediaReuseFindingIds;

  @BuiltValueField(wireName: r'coordinationFindingIds')
  BuiltList<String>? get coordinationFindingIds;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  SocialVersusObserved._();

  factory SocialVersusObserved([void updates(SocialVersusObservedBuilder b)]) =
      _$SocialVersusObserved;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialVersusObservedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialVersusObserved> get serializer =>
      _$SocialVersusObservedSerializer();
}

class _$SocialVersusObservedSerializer
    implements PrimitiveSerializer<SocialVersusObserved> {
  @override
  final Iterable<Type> types = const [
    SocialVersusObserved,
    _$SocialVersusObserved,
  ];

  @override
  final String wireName = r'SocialVersusObserved';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialVersusObserved object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'narrativesByStatus';
    yield serializers.serialize(
      object.narrativesByStatus,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(int),
      ]),
    );
    yield r'narratives';
    yield serializers.serialize(
      object.narratives,
      specifiedType: const FullType(BuiltList, [
        FullType(SocialVersusObservedNarrativesInner),
      ]),
    );
    if (object.attentionGapFindingIds != null) {
      yield r'attentionGapFindingIds';
      yield serializers.serialize(
        object.attentionGapFindingIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.leadTimes != null) {
      yield r'leadTimes';
      yield serializers.serialize(
        object.leadTimes,
        specifiedType: const FullType(BuiltList, [
          FullType(SocialVersusObservedLeadTimesInner),
        ]),
      );
    }
    if (object.mediaReuseFindingIds != null) {
      yield r'mediaReuseFindingIds';
      yield serializers.serialize(
        object.mediaReuseFindingIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.coordinationFindingIds != null) {
      yield r'coordinationFindingIds';
      yield serializers.serialize(
        object.coordinationFindingIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialVersusObserved object, {
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
    required SocialVersusObservedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'narrativesByStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>;
          result.narrativesByStatus.replace(valueDes);
          break;
        case r'narratives':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SocialVersusObservedNarrativesInner),
                    ]),
                  )
                  as BuiltList<SocialVersusObservedNarrativesInner>;
          result.narratives.replace(valueDes);
          break;
        case r'attentionGapFindingIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.attentionGapFindingIds.replace(valueDes);
          break;
        case r'leadTimes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SocialVersusObservedLeadTimesInner),
                    ]),
                  )
                  as BuiltList<SocialVersusObservedLeadTimesInner>?;
          if (valueDes == null) continue;
          result.leadTimes.replace(valueDes);
          break;
        case r'mediaReuseFindingIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.mediaReuseFindingIds.replace(valueDes);
          break;
        case r'coordinationFindingIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.coordinationFindingIds.replace(valueDes);
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialVersusObserved deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialVersusObservedBuilder();
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
