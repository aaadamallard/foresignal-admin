//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_settings_attention_gap.g.dart';

/// Attention-gap detection
///
/// Properties:
/// * [minSeverity] - Minimum finding severity; situation escalations and critical alerts always qualify
/// * [percentile]
/// * [lookbackDays]
/// * [windowHours]
@BuiltValue()
abstract class SocialSettingsAttentionGap
    implements
        Built<SocialSettingsAttentionGap, SocialSettingsAttentionGapBuilder> {
  /// Minimum finding severity; situation escalations and critical alerts always qualify
  @BuiltValueField(wireName: r'minSeverity')
  SocialSettingsAttentionGapMinSeverityEnum? get minSeverity;
  // enum minSeverityEnum {  notable,  significant,  };

  @BuiltValueField(wireName: r'percentile')
  num? get percentile;

  @BuiltValueField(wireName: r'lookbackDays')
  int? get lookbackDays;

  @BuiltValueField(wireName: r'windowHours')
  int? get windowHours;

  SocialSettingsAttentionGap._();

  factory SocialSettingsAttentionGap([
    void updates(SocialSettingsAttentionGapBuilder b),
  ]) = _$SocialSettingsAttentionGap;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSettingsAttentionGapBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSettingsAttentionGap> get serializer =>
      _$SocialSettingsAttentionGapSerializer();
}

class _$SocialSettingsAttentionGapSerializer
    implements PrimitiveSerializer<SocialSettingsAttentionGap> {
  @override
  final Iterable<Type> types = const [
    SocialSettingsAttentionGap,
    _$SocialSettingsAttentionGap,
  ];

  @override
  final String wireName = r'SocialSettingsAttentionGap';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSettingsAttentionGap object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType(
          SocialSettingsAttentionGapMinSeverityEnum,
        ),
      );
    }
    if (object.percentile != null) {
      yield r'percentile';
      yield serializers.serialize(
        object.percentile,
        specifiedType: const FullType(num),
      );
    }
    if (object.lookbackDays != null) {
      yield r'lookbackDays';
      yield serializers.serialize(
        object.lookbackDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.windowHours != null) {
      yield r'windowHours';
      yield serializers.serialize(
        object.windowHours,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsAttentionGap object, {
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
    required SocialSettingsAttentionGapBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minSeverity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SocialSettingsAttentionGapMinSeverityEnum,
                    ),
                  )
                  as SocialSettingsAttentionGapMinSeverityEnum?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        case r'percentile':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.percentile = valueDes;
          break;
        case r'lookbackDays':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lookbackDays = valueDes;
          break;
        case r'windowHours':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.windowHours = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSettingsAttentionGap deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSettingsAttentionGapBuilder();
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

/// Minimum finding severity; situation escalations and critical alerts always qualify
class SocialSettingsAttentionGapMinSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'notable')
  static const SocialSettingsAttentionGapMinSeverityEnum notable =
      _$socialSettingsAttentionGapMinSeverityEnum_notable;
  @BuiltValueEnumConst(wireName: r'significant')
  static const SocialSettingsAttentionGapMinSeverityEnum significant =
      _$socialSettingsAttentionGapMinSeverityEnum_significant;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialSettingsAttentionGapMinSeverityEnum unknownDefaultOpenApi =
      _$socialSettingsAttentionGapMinSeverityEnum_unknownDefaultOpenApi;

  static Serializer<SocialSettingsAttentionGapMinSeverityEnum> get serializer =>
      _$socialSettingsAttentionGapMinSeverityEnumSerializer;

  const SocialSettingsAttentionGapMinSeverityEnum._(String name) : super(name);

  static BuiltSet<SocialSettingsAttentionGapMinSeverityEnum> get values =>
      _$socialSettingsAttentionGapMinSeverityEnumValues;
  static SocialSettingsAttentionGapMinSeverityEnum valueOf(String name) =>
      _$socialSettingsAttentionGapMinSeverityEnumValueOf(name);
}
