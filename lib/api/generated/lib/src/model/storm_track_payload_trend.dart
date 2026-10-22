//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storm_track_payload_trend.g.dart';

/// Trend
///
/// Properties:
/// * [maxDbz]
@BuiltValue()
abstract class StormTrackPayloadTrend
    implements Built<StormTrackPayloadTrend, StormTrackPayloadTrendBuilder> {
  @BuiltValueField(wireName: r'maxDbz')
  StormTrackPayloadTrendMaxDbzEnum? get maxDbz;
  // enum maxDbzEnum {  rising,  steady,  falling,  };

  StormTrackPayloadTrend._();

  factory StormTrackPayloadTrend(
          [void updates(StormTrackPayloadTrendBuilder b)]) =
      _$StormTrackPayloadTrend;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StormTrackPayloadTrendBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StormTrackPayloadTrend> get serializer =>
      _$StormTrackPayloadTrendSerializer();
}

class _$StormTrackPayloadTrendSerializer
    implements PrimitiveSerializer<StormTrackPayloadTrend> {
  @override
  final Iterable<Type> types = const [
    StormTrackPayloadTrend,
    _$StormTrackPayloadTrend
  ];

  @override
  final String wireName = r'StormTrackPayloadTrend';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StormTrackPayloadTrend object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxDbz != null) {
      yield r'maxDbz';
      yield serializers.serialize(
        object.maxDbz,
        specifiedType: const FullType(StormTrackPayloadTrendMaxDbzEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadTrend object, {
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
    required StormTrackPayloadTrendBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxDbz':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(StormTrackPayloadTrendMaxDbzEnum),
          ) as StormTrackPayloadTrendMaxDbzEnum?;
          if (valueDes == null) continue;
          result.maxDbz = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StormTrackPayloadTrend deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StormTrackPayloadTrendBuilder();
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

class StormTrackPayloadTrendMaxDbzEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'rising')
  static const StormTrackPayloadTrendMaxDbzEnum rising =
      _$stormTrackPayloadTrendMaxDbzEnum_rising;
  @BuiltValueEnumConst(wireName: r'steady')
  static const StormTrackPayloadTrendMaxDbzEnum steady =
      _$stormTrackPayloadTrendMaxDbzEnum_steady;
  @BuiltValueEnumConst(wireName: r'falling')
  static const StormTrackPayloadTrendMaxDbzEnum falling =
      _$stormTrackPayloadTrendMaxDbzEnum_falling;

  static Serializer<StormTrackPayloadTrendMaxDbzEnum> get serializer =>
      _$stormTrackPayloadTrendMaxDbzEnumSerializer;

  const StormTrackPayloadTrendMaxDbzEnum._(String name) : super(name);

  static BuiltSet<StormTrackPayloadTrendMaxDbzEnum> get values =>
      _$stormTrackPayloadTrendMaxDbzEnumValues;
  static StormTrackPayloadTrendMaxDbzEnum valueOf(String name) =>
      _$stormTrackPayloadTrendMaxDbzEnumValueOf(name);
}
