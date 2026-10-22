//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_request.g.dart';

/// Batch point sample (≤ 100 points)
///
/// Properties:
/// * [points] - Points to sample
/// * [products]
/// * [time] - `latest`, `now`, ISO-8601, or a relative offset (`-PT1H`, `+PT6H`)
/// * [units]
@BuiltValue()
abstract class SampleRequest
    implements Built<SampleRequest, SampleRequestBuilder> {
  /// Points to sample
  @BuiltValueField(wireName: r'points')
  BuiltList<JsonObject?> get points;

  @BuiltValueField(wireName: r'products')
  BuiltList<String> get products;

  /// `latest`, `now`, ISO-8601, or a relative offset (`-PT1H`, `+PT6H`)
  @BuiltValueField(wireName: r'time')
  String? get time;

  @BuiltValueField(wireName: r'units')
  SampleRequestUnitsEnum? get units;
  // enum unitsEnum {  metric,  imperial,  };

  SampleRequest._();

  factory SampleRequest([void updates(SampleRequestBuilder b)]) =
      _$SampleRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SampleRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SampleRequest> get serializer =>
      _$SampleRequestSerializer();
}

class _$SampleRequestSerializer implements PrimitiveSerializer<SampleRequest> {
  @override
  final Iterable<Type> types = const [SampleRequest, _$SampleRequest];

  @override
  final String wireName = r'SampleRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SampleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'points';
    yield serializers.serialize(
      object.points,
      specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)]),
    );
    yield r'products';
    yield serializers.serialize(
      object.products,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(String),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(SampleRequestUnitsEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SampleRequest object, {
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
    required SampleRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType.nullable(JsonObject)]),
          ) as BuiltList<JsonObject?>;
          result.points.replace(valueDes);
          break;
        case r'products':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.products.replace(valueDes);
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.time = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SampleRequestUnitsEnum),
          ) as SampleRequestUnitsEnum?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SampleRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SampleRequestBuilder();
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

class SampleRequestUnitsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'metric')
  static const SampleRequestUnitsEnum metric = _$sampleRequestUnitsEnum_metric;
  @BuiltValueEnumConst(wireName: r'imperial')
  static const SampleRequestUnitsEnum imperial =
      _$sampleRequestUnitsEnum_imperial;

  static Serializer<SampleRequestUnitsEnum> get serializer =>
      _$sampleRequestUnitsEnumSerializer;

  const SampleRequestUnitsEnum._(String name) : super(name);

  static BuiltSet<SampleRequestUnitsEnum> get values =>
      _$sampleRequestUnitsEnumValues;
  static SampleRequestUnitsEnum valueOf(String name) =>
      _$sampleRequestUnitsEnumValueOf(name);
}
