//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_search.g.dart';

/// Optional provider search endpoint used by cues (137)
///
/// Properties:
/// * [url]
/// * [auth]
/// * [header]
@BuiltValue()
abstract class EdpSearch implements Built<EdpSearch, EdpSearchBuilder> {
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'auth')
  EdpSearchAuthEnum? get auth;
  // enum authEnum {  none,  bearer,  header,  basic,  };

  @BuiltValueField(wireName: r'header')
  String? get header;

  EdpSearch._();

  factory EdpSearch([void updates(EdpSearchBuilder b)]) = _$EdpSearch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpSearchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpSearch> get serializer => _$EdpSearchSerializer();
}

class _$EdpSearchSerializer implements PrimitiveSerializer<EdpSearch> {
  @override
  final Iterable<Type> types = const [EdpSearch, _$EdpSearch];

  @override
  final String wireName = r'EdpSearch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpSearch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.auth != null) {
      yield r'auth';
      yield serializers.serialize(
        object.auth,
        specifiedType: const FullType(EdpSearchAuthEnum),
      );
    }
    if (object.header != null) {
      yield r'header';
      yield serializers.serialize(
        object.header,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpSearch object, {
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
    required EdpSearchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.url = valueDes;
          break;
        case r'auth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdpSearchAuthEnum),
                  )
                  as EdpSearchAuthEnum?;
          if (valueDes == null) continue;
          result.auth = valueDes;
          break;
        case r'header':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.header = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpSearch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpSearchBuilder();
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

class EdpSearchAuthEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const EdpSearchAuthEnum none = _$edpSearchAuthEnum_none;
  @BuiltValueEnumConst(wireName: r'bearer')
  static const EdpSearchAuthEnum bearer = _$edpSearchAuthEnum_bearer;
  @BuiltValueEnumConst(wireName: r'header')
  static const EdpSearchAuthEnum header = _$edpSearchAuthEnum_header;
  @BuiltValueEnumConst(wireName: r'basic')
  static const EdpSearchAuthEnum basic = _$edpSearchAuthEnum_basic;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EdpSearchAuthEnum unknownDefaultOpenApi =
      _$edpSearchAuthEnum_unknownDefaultOpenApi;

  static Serializer<EdpSearchAuthEnum> get serializer =>
      _$edpSearchAuthEnumSerializer;

  const EdpSearchAuthEnum._(String name) : super(name);

  static BuiltSet<EdpSearchAuthEnum> get values => _$edpSearchAuthEnumValues;
  static EdpSearchAuthEnum valueOf(String name) =>
      _$edpSearchAuthEnumValueOf(name);
}
