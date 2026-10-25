//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_source_info_access.g.dart';

/// EdpSourceInfoAccess
///
/// Properties:
/// * [route]
/// * [fragility]
@BuiltValue()
abstract class EdpSourceInfoAccess
    implements Built<EdpSourceInfoAccess, EdpSourceInfoAccessBuilder> {
  @BuiltValueField(wireName: r'route')
  EdpSourceInfoAccessRouteEnum get route;
  // enum routeEnum {  official,  unofficial-api,  scrape,  browser,  other,  };

  @BuiltValueField(wireName: r'fragility')
  EdpSourceInfoAccessFragilityEnum? get fragility;
  // enum fragilityEnum {  low,  medium,  high,  };

  EdpSourceInfoAccess._();

  factory EdpSourceInfoAccess([void updates(EdpSourceInfoAccessBuilder b)]) =
      _$EdpSourceInfoAccess;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpSourceInfoAccessBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpSourceInfoAccess> get serializer =>
      _$EdpSourceInfoAccessSerializer();
}

class _$EdpSourceInfoAccessSerializer
    implements PrimitiveSerializer<EdpSourceInfoAccess> {
  @override
  final Iterable<Type> types = const [
    EdpSourceInfoAccess,
    _$EdpSourceInfoAccess,
  ];

  @override
  final String wireName = r'EdpSourceInfoAccess';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpSourceInfoAccess object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'route';
    yield serializers.serialize(
      object.route,
      specifiedType: const FullType(EdpSourceInfoAccessRouteEnum),
    );
    if (object.fragility != null) {
      yield r'fragility';
      yield serializers.serialize(
        object.fragility,
        specifiedType: const FullType(EdpSourceInfoAccessFragilityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpSourceInfoAccess object, {
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
    required EdpSourceInfoAccessBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'route':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EdpSourceInfoAccessRouteEnum),
                  )
                  as EdpSourceInfoAccessRouteEnum;
          result.route = valueDes;
          break;
        case r'fragility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EdpSourceInfoAccessFragilityEnum,
                    ),
                  )
                  as EdpSourceInfoAccessFragilityEnum?;
          if (valueDes == null) continue;
          result.fragility = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpSourceInfoAccess deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpSourceInfoAccessBuilder();
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

class EdpSourceInfoAccessRouteEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'official')
  static const EdpSourceInfoAccessRouteEnum official =
      _$edpSourceInfoAccessRouteEnum_official;
  @BuiltValueEnumConst(wireName: r'unofficial-api')
  static const EdpSourceInfoAccessRouteEnum unofficialApi =
      _$edpSourceInfoAccessRouteEnum_unofficialApi;
  @BuiltValueEnumConst(wireName: r'scrape')
  static const EdpSourceInfoAccessRouteEnum scrape =
      _$edpSourceInfoAccessRouteEnum_scrape;
  @BuiltValueEnumConst(wireName: r'browser')
  static const EdpSourceInfoAccessRouteEnum browser =
      _$edpSourceInfoAccessRouteEnum_browser;
  @BuiltValueEnumConst(wireName: r'other')
  static const EdpSourceInfoAccessRouteEnum other =
      _$edpSourceInfoAccessRouteEnum_other;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EdpSourceInfoAccessRouteEnum unknownDefaultOpenApi =
      _$edpSourceInfoAccessRouteEnum_unknownDefaultOpenApi;

  static Serializer<EdpSourceInfoAccessRouteEnum> get serializer =>
      _$edpSourceInfoAccessRouteEnumSerializer;

  const EdpSourceInfoAccessRouteEnum._(String name) : super(name);

  static BuiltSet<EdpSourceInfoAccessRouteEnum> get values =>
      _$edpSourceInfoAccessRouteEnumValues;
  static EdpSourceInfoAccessRouteEnum valueOf(String name) =>
      _$edpSourceInfoAccessRouteEnumValueOf(name);
}

class EdpSourceInfoAccessFragilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const EdpSourceInfoAccessFragilityEnum low =
      _$edpSourceInfoAccessFragilityEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const EdpSourceInfoAccessFragilityEnum medium =
      _$edpSourceInfoAccessFragilityEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const EdpSourceInfoAccessFragilityEnum high =
      _$edpSourceInfoAccessFragilityEnum_high;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EdpSourceInfoAccessFragilityEnum unknownDefaultOpenApi =
      _$edpSourceInfoAccessFragilityEnum_unknownDefaultOpenApi;

  static Serializer<EdpSourceInfoAccessFragilityEnum> get serializer =>
      _$edpSourceInfoAccessFragilityEnumSerializer;

  const EdpSourceInfoAccessFragilityEnum._(String name) : super(name);

  static BuiltSet<EdpSourceInfoAccessFragilityEnum> get values =>
      _$edpSourceInfoAccessFragilityEnumValues;
  static EdpSourceInfoAccessFragilityEnum valueOf(String name) =>
      _$edpSourceInfoAccessFragilityEnumValueOf(name);
}
