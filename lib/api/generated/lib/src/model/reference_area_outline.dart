//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reference_area_outline.g.dart';

/// The outline of a country or admin-1 region (161), simplified for display
///
/// Properties:
/// * [kind]
/// * [code]
/// * [name]
/// * [countryIso2]
/// * [countryName]
/// * [bbox] - [west, south, east, north]
/// * [geometry]
@BuiltValue()
abstract class ReferenceAreaOutline
    implements Built<ReferenceAreaOutline, ReferenceAreaOutlineBuilder> {
  @BuiltValueField(wireName: r'kind')
  ReferenceAreaOutlineKindEnum get kind;
  // enum kindEnum {  country,  admin1,  };

  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'countryIso2')
  String? get countryIso2;

  @BuiltValueField(wireName: r'countryName')
  String? get countryName;

  /// [west, south, east, north]
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num> get bbox;

  @BuiltValueField(wireName: r'geometry')
  Geometry get geometry;

  ReferenceAreaOutline._();

  factory ReferenceAreaOutline([void updates(ReferenceAreaOutlineBuilder b)]) =
      _$ReferenceAreaOutline;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenceAreaOutlineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenceAreaOutline> get serializer =>
      _$ReferenceAreaOutlineSerializer();
}

class _$ReferenceAreaOutlineSerializer
    implements PrimitiveSerializer<ReferenceAreaOutline> {
  @override
  final Iterable<Type> types = const [
    ReferenceAreaOutline,
    _$ReferenceAreaOutline,
  ];

  @override
  final String wireName = r'ReferenceAreaOutline';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenceAreaOutline object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(ReferenceAreaOutlineKindEnum),
    );
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.countryIso2 != null) {
      yield r'countryIso2';
      yield serializers.serialize(
        object.countryIso2,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.countryName != null) {
      yield r'countryName';
      yield serializers.serialize(
        object.countryName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'bbox';
    yield serializers.serialize(
      object.bbox,
      specifiedType: const FullType(BuiltList, [FullType(num)]),
    );
    yield r'geometry';
    yield serializers.serialize(
      object.geometry,
      specifiedType: const FullType(Geometry),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferenceAreaOutline object, {
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
    required ReferenceAreaOutlineBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReferenceAreaOutlineKindEnum),
                  )
                  as ReferenceAreaOutlineKindEnum;
          result.kind = valueDes;
          break;
        case r'code':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.code = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'countryIso2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.countryIso2 = valueDes;
          break;
        case r'countryName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.countryName = valueDes;
          break;
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [FullType(num)]),
                  )
                  as BuiltList<num>;
          result.bbox.replace(valueDes);
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Geometry),
                  )
                  as Geometry;
          result.geometry.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReferenceAreaOutline deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenceAreaOutlineBuilder();
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

class ReferenceAreaOutlineKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'country')
  static const ReferenceAreaOutlineKindEnum country =
      _$referenceAreaOutlineKindEnum_country;
  @BuiltValueEnumConst(wireName: r'admin1')
  static const ReferenceAreaOutlineKindEnum admin1 =
      _$referenceAreaOutlineKindEnum_admin1;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReferenceAreaOutlineKindEnum unknownDefaultOpenApi =
      _$referenceAreaOutlineKindEnum_unknownDefaultOpenApi;

  static Serializer<ReferenceAreaOutlineKindEnum> get serializer =>
      _$referenceAreaOutlineKindEnumSerializer;

  const ReferenceAreaOutlineKindEnum._(String name) : super(name);

  static BuiltSet<ReferenceAreaOutlineKindEnum> get values =>
      _$referenceAreaOutlineKindEnumValues;
  static ReferenceAreaOutlineKindEnum valueOf(String name) =>
      _$referenceAreaOutlineKindEnumValueOf(name);
}
