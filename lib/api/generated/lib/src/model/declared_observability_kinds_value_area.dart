//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'declared_observability_kinds_value_area.g.dart';

/// Where the source can observe
///
/// Properties:
/// * [type]
/// * [bbox] - [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [regionCodes]
@BuiltValue()
abstract class DeclaredObservabilityKindsValueArea
    implements
        Built<DeclaredObservabilityKindsValueArea,
            DeclaredObservabilityKindsValueAreaBuilder> {
  @BuiltValueField(wireName: r'type')
  DeclaredObservabilityKindsValueAreaTypeEnum get type;
  // enum typeEnum {  global,  bbox,  regions,  };

  /// [minLon, minLat, maxLon, maxLat] (WGS84)
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  DeclaredObservabilityKindsValueArea._();

  factory DeclaredObservabilityKindsValueArea(
          [void updates(DeclaredObservabilityKindsValueAreaBuilder b)]) =
      _$DeclaredObservabilityKindsValueArea;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeclaredObservabilityKindsValueAreaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeclaredObservabilityKindsValueArea> get serializer =>
      _$DeclaredObservabilityKindsValueAreaSerializer();
}

class _$DeclaredObservabilityKindsValueAreaSerializer
    implements PrimitiveSerializer<DeclaredObservabilityKindsValueArea> {
  @override
  final Iterable<Type> types = const [
    DeclaredObservabilityKindsValueArea,
    _$DeclaredObservabilityKindsValueArea
  ];

  @override
  final String wireName = r'DeclaredObservabilityKindsValueArea';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeclaredObservabilityKindsValueArea object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType:
          const FullType(DeclaredObservabilityKindsValueAreaTypeEnum),
    );
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeclaredObservabilityKindsValueArea object, {
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
    required DeclaredObservabilityKindsValueAreaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(DeclaredObservabilityKindsValueAreaTypeEnum),
          ) as DeclaredObservabilityKindsValueAreaTypeEnum;
          result.type = valueDes;
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'regionCodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeclaredObservabilityKindsValueArea deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeclaredObservabilityKindsValueAreaBuilder();
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

class DeclaredObservabilityKindsValueAreaTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'global')
  static const DeclaredObservabilityKindsValueAreaTypeEnum global =
      _$declaredObservabilityKindsValueAreaTypeEnum_global;
  @BuiltValueEnumConst(wireName: r'bbox')
  static const DeclaredObservabilityKindsValueAreaTypeEnum bbox =
      _$declaredObservabilityKindsValueAreaTypeEnum_bbox;
  @BuiltValueEnumConst(wireName: r'regions')
  static const DeclaredObservabilityKindsValueAreaTypeEnum regions =
      _$declaredObservabilityKindsValueAreaTypeEnum_regions;

  static Serializer<DeclaredObservabilityKindsValueAreaTypeEnum>
      get serializer => _$declaredObservabilityKindsValueAreaTypeEnumSerializer;

  const DeclaredObservabilityKindsValueAreaTypeEnum._(String name)
      : super(name);

  static BuiltSet<DeclaredObservabilityKindsValueAreaTypeEnum> get values =>
      _$declaredObservabilityKindsValueAreaTypeEnumValues;
  static DeclaredObservabilityKindsValueAreaTypeEnum valueOf(String name) =>
      _$declaredObservabilityKindsValueAreaTypeEnumValueOf(name);
}
