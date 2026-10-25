//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_access.g.dart';

/// How a source reaches its data and what enabling it involves
///
/// Properties:
/// * [route]
/// * [termsSummary]
/// * [termsUrl]
/// * [fragility]
@BuiltValue()
abstract class SourceAccess
    implements Built<SourceAccess, SourceAccessBuilder> {
  @BuiltValueField(wireName: r'route')
  SourceAccessRouteEnum get route;
  // enum routeEnum {  official,  unofficial-api,  scrape,  browser,  other,  };

  @BuiltValueField(wireName: r'termsSummary')
  String? get termsSummary;

  @BuiltValueField(wireName: r'termsUrl')
  String? get termsUrl;

  @BuiltValueField(wireName: r'fragility')
  SourceAccessFragilityEnum? get fragility;
  // enum fragilityEnum {  low,  medium,  high,  };

  SourceAccess._();

  factory SourceAccess([void updates(SourceAccessBuilder b)]) = _$SourceAccess;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceAccessBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceAccess> get serializer => _$SourceAccessSerializer();
}

class _$SourceAccessSerializer implements PrimitiveSerializer<SourceAccess> {
  @override
  final Iterable<Type> types = const [SourceAccess, _$SourceAccess];

  @override
  final String wireName = r'SourceAccess';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceAccess object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'route';
    yield serializers.serialize(
      object.route,
      specifiedType: const FullType(SourceAccessRouteEnum),
    );
    if (object.termsSummary != null) {
      yield r'termsSummary';
      yield serializers.serialize(
        object.termsSummary,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.termsUrl != null) {
      yield r'termsUrl';
      yield serializers.serialize(
        object.termsUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fragility != null) {
      yield r'fragility';
      yield serializers.serialize(
        object.fragility,
        specifiedType: const FullType(SourceAccessFragilityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceAccess object, {
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
    required SourceAccessBuilder result,
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
                    specifiedType: const FullType(SourceAccessRouteEnum),
                  )
                  as SourceAccessRouteEnum;
          result.route = valueDes;
          break;
        case r'termsSummary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.termsSummary = valueDes;
          break;
        case r'termsUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.termsUrl = valueDes;
          break;
        case r'fragility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SourceAccessFragilityEnum,
                    ),
                  )
                  as SourceAccessFragilityEnum?;
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
  SourceAccess deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceAccessBuilder();
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

class SourceAccessRouteEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'official')
  static const SourceAccessRouteEnum official =
      _$sourceAccessRouteEnum_official;
  @BuiltValueEnumConst(wireName: r'unofficial-api')
  static const SourceAccessRouteEnum unofficialApi =
      _$sourceAccessRouteEnum_unofficialApi;
  @BuiltValueEnumConst(wireName: r'scrape')
  static const SourceAccessRouteEnum scrape = _$sourceAccessRouteEnum_scrape;
  @BuiltValueEnumConst(wireName: r'browser')
  static const SourceAccessRouteEnum browser = _$sourceAccessRouteEnum_browser;
  @BuiltValueEnumConst(wireName: r'other')
  static const SourceAccessRouteEnum other = _$sourceAccessRouteEnum_other;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SourceAccessRouteEnum unknownDefaultOpenApi =
      _$sourceAccessRouteEnum_unknownDefaultOpenApi;

  static Serializer<SourceAccessRouteEnum> get serializer =>
      _$sourceAccessRouteEnumSerializer;

  const SourceAccessRouteEnum._(String name) : super(name);

  static BuiltSet<SourceAccessRouteEnum> get values =>
      _$sourceAccessRouteEnumValues;
  static SourceAccessRouteEnum valueOf(String name) =>
      _$sourceAccessRouteEnumValueOf(name);
}

class SourceAccessFragilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const SourceAccessFragilityEnum low = _$sourceAccessFragilityEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const SourceAccessFragilityEnum medium =
      _$sourceAccessFragilityEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const SourceAccessFragilityEnum high =
      _$sourceAccessFragilityEnum_high;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SourceAccessFragilityEnum unknownDefaultOpenApi =
      _$sourceAccessFragilityEnum_unknownDefaultOpenApi;

  static Serializer<SourceAccessFragilityEnum> get serializer =>
      _$sourceAccessFragilityEnumSerializer;

  const SourceAccessFragilityEnum._(String name) : super(name);

  static BuiltSet<SourceAccessFragilityEnum> get values =>
      _$sourceAccessFragilityEnumValues;
  static SourceAccessFragilityEnum valueOf(String name) =>
      _$sourceAccessFragilityEnumValueOf(name);
}
