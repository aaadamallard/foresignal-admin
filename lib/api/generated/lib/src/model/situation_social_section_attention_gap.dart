//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_social_section_attention_gap.g.dart';

/// Attention gap
///
/// Properties:
/// * [findingId] - ULID identifier
/// * [expected]
/// * [observed]
/// * [platforms]
@BuiltValue()
abstract class SituationSocialSectionAttentionGap
    implements
        Built<SituationSocialSectionAttentionGap,
            SituationSocialSectionAttentionGapBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'findingId')
  String get findingId;

  @BuiltValueField(wireName: r'expected')
  num get expected;

  @BuiltValueField(wireName: r'observed')
  num get observed;

  @BuiltValueField(wireName: r'platforms')
  BuiltList<String>? get platforms;

  SituationSocialSectionAttentionGap._();

  factory SituationSocialSectionAttentionGap(
          [void updates(SituationSocialSectionAttentionGapBuilder b)]) =
      _$SituationSocialSectionAttentionGap;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationSocialSectionAttentionGapBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationSocialSectionAttentionGap> get serializer =>
      _$SituationSocialSectionAttentionGapSerializer();
}

class _$SituationSocialSectionAttentionGapSerializer
    implements PrimitiveSerializer<SituationSocialSectionAttentionGap> {
  @override
  final Iterable<Type> types = const [
    SituationSocialSectionAttentionGap,
    _$SituationSocialSectionAttentionGap
  ];

  @override
  final String wireName = r'SituationSocialSectionAttentionGap';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationSocialSectionAttentionGap object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'findingId';
    yield serializers.serialize(
      object.findingId,
      specifiedType: const FullType(String),
    );
    yield r'expected';
    yield serializers.serialize(
      object.expected,
      specifiedType: const FullType(num),
    );
    yield r'observed';
    yield serializers.serialize(
      object.observed,
      specifiedType: const FullType(num),
    );
    if (object.platforms != null) {
      yield r'platforms';
      yield serializers.serialize(
        object.platforms,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationSocialSectionAttentionGap object, {
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
    required SituationSocialSectionAttentionGapBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'findingId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.findingId = valueDes;
          break;
        case r'expected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.expected = valueDes;
          break;
        case r'observed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.observed = valueDes;
          break;
        case r'platforms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.platforms.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationSocialSectionAttentionGap deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationSocialSectionAttentionGapBuilder();
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
