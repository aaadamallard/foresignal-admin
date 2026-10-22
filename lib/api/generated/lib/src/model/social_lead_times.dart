//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_lead_times.g.dart';

/// First observations and signed lead of social first observation (positive = social first)
///
/// Properties:
/// * [socialFirst]
/// * [physicalFirst]
/// * [newsFirst]
/// * [officialFirst]
/// * [leadOverPhysicalSeconds]
/// * [leadOverNewsSeconds]
/// * [leadOverOfficialSeconds]
@BuiltValue()
abstract class SocialLeadTimes
    implements Built<SocialLeadTimes, SocialLeadTimesBuilder> {
  @BuiltValueField(wireName: r'socialFirst')
  DateTime get socialFirst;

  @BuiltValueField(wireName: r'physicalFirst')
  DateTime? get physicalFirst;

  @BuiltValueField(wireName: r'newsFirst')
  DateTime? get newsFirst;

  @BuiltValueField(wireName: r'officialFirst')
  DateTime? get officialFirst;

  @BuiltValueField(wireName: r'leadOverPhysicalSeconds')
  num? get leadOverPhysicalSeconds;

  @BuiltValueField(wireName: r'leadOverNewsSeconds')
  num? get leadOverNewsSeconds;

  @BuiltValueField(wireName: r'leadOverOfficialSeconds')
  num? get leadOverOfficialSeconds;

  SocialLeadTimes._();

  factory SocialLeadTimes([void updates(SocialLeadTimesBuilder b)]) =
      _$SocialLeadTimes;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialLeadTimesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialLeadTimes> get serializer =>
      _$SocialLeadTimesSerializer();
}

class _$SocialLeadTimesSerializer
    implements PrimitiveSerializer<SocialLeadTimes> {
  @override
  final Iterable<Type> types = const [SocialLeadTimes, _$SocialLeadTimes];

  @override
  final String wireName = r'SocialLeadTimes';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialLeadTimes object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'socialFirst';
    yield serializers.serialize(
      object.socialFirst,
      specifiedType: const FullType(DateTime),
    );
    if (object.physicalFirst != null) {
      yield r'physicalFirst';
      yield serializers.serialize(
        object.physicalFirst,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.newsFirst != null) {
      yield r'newsFirst';
      yield serializers.serialize(
        object.newsFirst,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.officialFirst != null) {
      yield r'officialFirst';
      yield serializers.serialize(
        object.officialFirst,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.leadOverPhysicalSeconds != null) {
      yield r'leadOverPhysicalSeconds';
      yield serializers.serialize(
        object.leadOverPhysicalSeconds,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.leadOverNewsSeconds != null) {
      yield r'leadOverNewsSeconds';
      yield serializers.serialize(
        object.leadOverNewsSeconds,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.leadOverOfficialSeconds != null) {
      yield r'leadOverOfficialSeconds';
      yield serializers.serialize(
        object.leadOverOfficialSeconds,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialLeadTimes object, {
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
    required SocialLeadTimesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'socialFirst':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.socialFirst = valueDes;
          break;
        case r'physicalFirst':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.physicalFirst = valueDes;
          break;
        case r'newsFirst':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.newsFirst = valueDes;
          break;
        case r'officialFirst':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.officialFirst = valueDes;
          break;
        case r'leadOverPhysicalSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.leadOverPhysicalSeconds = valueDes;
          break;
        case r'leadOverNewsSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.leadOverNewsSeconds = valueDes;
          break;
        case r'leadOverOfficialSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.leadOverOfficialSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialLeadTimes deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialLeadTimesBuilder();
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
