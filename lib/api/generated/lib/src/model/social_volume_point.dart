//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_volume_point.g.dart';

/// One interval of a mention-volume series against its seasonal baseline
///
/// Properties:
/// * [t]
/// * [observed]
/// * [baseline] - Hour-of-week median over the trailing 8 weeks, scaled by the platform-language denominator
/// * [mad]
/// * [velocityRatio] - observed / baseline
/// * [zRobust]
/// * [complete] - Collection was complete for the interval
@BuiltValue()
abstract class SocialVolumePoint
    implements Built<SocialVolumePoint, SocialVolumePointBuilder> {
  @BuiltValueField(wireName: r't')
  DateTime get t;

  @BuiltValueField(wireName: r'observed')
  num get observed;

  /// Hour-of-week median over the trailing 8 weeks, scaled by the platform-language denominator
  @BuiltValueField(wireName: r'baseline')
  num? get baseline;

  @BuiltValueField(wireName: r'mad')
  num? get mad;

  /// observed / baseline
  @BuiltValueField(wireName: r'velocityRatio')
  num? get velocityRatio;

  @BuiltValueField(wireName: r'zRobust')
  num? get zRobust;

  /// Collection was complete for the interval
  @BuiltValueField(wireName: r'complete')
  bool get complete;

  SocialVolumePoint._();

  factory SocialVolumePoint([void updates(SocialVolumePointBuilder b)]) =
      _$SocialVolumePoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialVolumePointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialVolumePoint> get serializer =>
      _$SocialVolumePointSerializer();
}

class _$SocialVolumePointSerializer
    implements PrimitiveSerializer<SocialVolumePoint> {
  @override
  final Iterable<Type> types = const [SocialVolumePoint, _$SocialVolumePoint];

  @override
  final String wireName = r'SocialVolumePoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialVolumePoint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r't';
    yield serializers.serialize(
      object.t,
      specifiedType: const FullType(DateTime),
    );
    yield r'observed';
    yield serializers.serialize(
      object.observed,
      specifiedType: const FullType(num),
    );
    if (object.baseline != null) {
      yield r'baseline';
      yield serializers.serialize(
        object.baseline,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.mad != null) {
      yield r'mad';
      yield serializers.serialize(
        object.mad,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.velocityRatio != null) {
      yield r'velocityRatio';
      yield serializers.serialize(
        object.velocityRatio,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.zRobust != null) {
      yield r'zRobust';
      yield serializers.serialize(
        object.zRobust,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'complete';
    yield serializers.serialize(
      object.complete,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialVolumePoint object, {
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
    required SocialVolumePointBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r't':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.t = valueDes;
          break;
        case r'observed':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.observed = valueDes;
          break;
        case r'baseline':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.baseline = valueDes;
          break;
        case r'mad':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.mad = valueDes;
          break;
        case r'velocityRatio':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.velocityRatio = valueDes;
          break;
        case r'zRobust':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.zRobust = valueDes;
          break;
        case r'complete':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.complete = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialVolumePoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialVolumePointBuilder();
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
