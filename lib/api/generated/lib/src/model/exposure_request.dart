//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exposure_request.g.dart';

/// Exposure query: exactly one of geometry, placeId or eventId
///
/// Properties:
/// * [geometry]
/// * [placeId]
/// * [eventId] - ULID identifier
/// * [population] - auto: section reports not-installed without a pack; required: 409 PACK_NOT_INSTALLED
/// * [dependents] - Include the infrastructure dependents summary (104)
@BuiltValue()
abstract class ExposureRequest
    implements Built<ExposureRequest, ExposureRequestBuilder> {
  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  /// ULID identifier
  @BuiltValueField(wireName: r'eventId')
  String? get eventId;

  /// auto: section reports not-installed without a pack; required: 409 PACK_NOT_INSTALLED
  @BuiltValueField(wireName: r'population')
  ExposureRequestPopulationEnum? get population;
  // enum populationEnum {  auto,  off,  required,  };

  /// Include the infrastructure dependents summary (104)
  @BuiltValueField(wireName: r'dependents')
  bool? get dependents;

  ExposureRequest._();

  factory ExposureRequest([void updates(ExposureRequestBuilder b)]) =
      _$ExposureRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExposureRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExposureRequest> get serializer =>
      _$ExposureRequestSerializer();
}

class _$ExposureRequestSerializer
    implements PrimitiveSerializer<ExposureRequest> {
  @override
  final Iterable<Type> types = const [ExposureRequest, _$ExposureRequest];

  @override
  final String wireName = r'ExposureRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExposureRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType(Geometry),
      );
    }
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.eventId != null) {
      yield r'eventId';
      yield serializers.serialize(
        object.eventId,
        specifiedType: const FullType(String),
      );
    }
    if (object.population != null) {
      yield r'population';
      yield serializers.serialize(
        object.population,
        specifiedType: const FullType(ExposureRequestPopulationEnum),
      );
    }
    if (object.dependents != null) {
      yield r'dependents';
      yield serializers.serialize(
        object.dependents,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExposureRequest object, {
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
    required ExposureRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'placeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'eventId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.eventId = valueDes;
          break;
        case r'population':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(ExposureRequestPopulationEnum),
          ) as ExposureRequestPopulationEnum?;
          if (valueDes == null) continue;
          result.population = valueDes;
          break;
        case r'dependents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.dependents = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExposureRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExposureRequestBuilder();
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

/// auto: section reports not-installed without a pack; required: 409 PACK_NOT_INSTALLED
class ExposureRequestPopulationEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'auto')
  static const ExposureRequestPopulationEnum auto =
      _$exposureRequestPopulationEnum_auto;
  @BuiltValueEnumConst(wireName: r'off')
  static const ExposureRequestPopulationEnum off =
      _$exposureRequestPopulationEnum_off;
  @BuiltValueEnumConst(wireName: r'required')
  static const ExposureRequestPopulationEnum required_ =
      _$exposureRequestPopulationEnum_required_;

  static Serializer<ExposureRequestPopulationEnum> get serializer =>
      _$exposureRequestPopulationEnumSerializer;

  const ExposureRequestPopulationEnum._(String name) : super(name);

  static BuiltSet<ExposureRequestPopulationEnum> get values =>
      _$exposureRequestPopulationEnumValues;
  static ExposureRequestPopulationEnum valueOf(String name) =>
      _$exposureRequestPopulationEnumValueOf(name);
}
