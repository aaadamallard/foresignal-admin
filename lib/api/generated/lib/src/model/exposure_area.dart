//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exposure_area.g.dart';

/// The evaluated area
///
/// Properties:
/// * [source_]
/// * [placeId]
/// * [eventId] - ULID identifier
/// * [geometry]
/// * [areaKm2]
@BuiltValue()
abstract class ExposureArea
    implements Built<ExposureArea, ExposureAreaBuilder> {
  @BuiltValueField(wireName: r'source')
  ExposureAreaSource_Enum get source_;
  // enum source_Enum {  geometry,  place,  event,  };

  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  /// ULID identifier
  @BuiltValueField(wireName: r'eventId')
  String? get eventId;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'areaKm2')
  num? get areaKm2;

  ExposureArea._();

  factory ExposureArea([void updates(ExposureAreaBuilder b)]) = _$ExposureArea;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExposureAreaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExposureArea> get serializer => _$ExposureAreaSerializer();
}

class _$ExposureAreaSerializer implements PrimitiveSerializer<ExposureArea> {
  @override
  final Iterable<Type> types = const [ExposureArea, _$ExposureArea];

  @override
  final String wireName = r'ExposureArea';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExposureArea object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(ExposureAreaSource_Enum),
    );
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.eventId != null) {
      yield r'eventId';
      yield serializers.serialize(
        object.eventId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.areaKm2 != null) {
      yield r'areaKm2';
      yield serializers.serialize(
        object.areaKm2,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExposureArea object, {
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
    required ExposureAreaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExposureAreaSource_Enum),
                  )
                  as ExposureAreaSource_Enum;
          result.source_ = valueDes;
          break;
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'eventId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.eventId = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'areaKm2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.areaKm2 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExposureArea deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExposureAreaBuilder();
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

class ExposureAreaSource_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'geometry')
  static const ExposureAreaSource_Enum geometry =
      _$exposureAreaSourceEnum_geometry;
  @BuiltValueEnumConst(wireName: r'place')
  static const ExposureAreaSource_Enum place = _$exposureAreaSourceEnum_place;
  @BuiltValueEnumConst(wireName: r'event')
  static const ExposureAreaSource_Enum event = _$exposureAreaSourceEnum_event;

  static Serializer<ExposureAreaSource_Enum> get serializer =>
      _$exposureAreaSourceEnumSerializer;

  const ExposureAreaSource_Enum._(String name) : super(name);

  static BuiltSet<ExposureAreaSource_Enum> get values =>
      _$exposureAreaSourceEnumValues;
  static ExposureAreaSource_Enum valueOf(String name) =>
      _$exposureAreaSourceEnumValueOf(name);
}
