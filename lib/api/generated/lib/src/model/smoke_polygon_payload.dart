//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'smoke_polygon_payload.g.dart';

/// Payload of `smoke-polygon` records (hms-smoke analyst polygons)
///
/// Properties:
/// * [density]
/// * [densityRank]
/// * [start]
/// * [end]
/// * [satellite]
/// * [label]
@BuiltValue()
abstract class SmokePolygonPayload
    implements Built<SmokePolygonPayload, SmokePolygonPayloadBuilder> {
  @BuiltValueField(wireName: r'density')
  SmokePolygonPayloadDensityEnum get density;
  // enum densityEnum {  light,  medium,  heavy,  };

  @BuiltValueField(wireName: r'densityRank')
  int get densityRank;

  @BuiltValueField(wireName: r'start')
  DateTime? get start;

  @BuiltValueField(wireName: r'end')
  DateTime? get end;

  @BuiltValueField(wireName: r'satellite')
  String? get satellite;

  @BuiltValueField(wireName: r'label')
  String get label;

  SmokePolygonPayload._();

  factory SmokePolygonPayload([void updates(SmokePolygonPayloadBuilder b)]) =
      _$SmokePolygonPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SmokePolygonPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SmokePolygonPayload> get serializer =>
      _$SmokePolygonPayloadSerializer();
}

class _$SmokePolygonPayloadSerializer
    implements PrimitiveSerializer<SmokePolygonPayload> {
  @override
  final Iterable<Type> types = const [
    SmokePolygonPayload,
    _$SmokePolygonPayload,
  ];

  @override
  final String wireName = r'SmokePolygonPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmokePolygonPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'density';
    yield serializers.serialize(
      object.density,
      specifiedType: const FullType(SmokePolygonPayloadDensityEnum),
    );
    yield r'densityRank';
    yield serializers.serialize(
      object.densityRank,
      specifiedType: const FullType(int),
    );
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.satellite != null) {
      yield r'satellite';
      yield serializers.serialize(
        object.satellite,
        specifiedType: const FullType(String),
      );
    }
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SmokePolygonPayload object, {
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
    required SmokePolygonPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'density':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SmokePolygonPayloadDensityEnum,
                    ),
                  )
                  as SmokePolygonPayloadDensityEnum;
          result.density = valueDes;
          break;
        case r'densityRank':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.densityRank = valueDes;
          break;
        case r'start':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.start = valueDes;
          break;
        case r'end':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.end = valueDes;
          break;
        case r'satellite':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.satellite = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SmokePolygonPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmokePolygonPayloadBuilder();
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

class SmokePolygonPayloadDensityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'light')
  static const SmokePolygonPayloadDensityEnum light =
      _$smokePolygonPayloadDensityEnum_light;
  @BuiltValueEnumConst(wireName: r'medium')
  static const SmokePolygonPayloadDensityEnum medium =
      _$smokePolygonPayloadDensityEnum_medium;
  @BuiltValueEnumConst(wireName: r'heavy')
  static const SmokePolygonPayloadDensityEnum heavy =
      _$smokePolygonPayloadDensityEnum_heavy;

  static Serializer<SmokePolygonPayloadDensityEnum> get serializer =>
      _$smokePolygonPayloadDensityEnumSerializer;

  const SmokePolygonPayloadDensityEnum._(String name) : super(name);

  static BuiltSet<SmokePolygonPayloadDensityEnum> get values =>
      _$smokePolygonPayloadDensityEnumValues;
  static SmokePolygonPayloadDensityEnum valueOf(String name) =>
      _$smokePolygonPayloadDensityEnumValueOf(name);
}
