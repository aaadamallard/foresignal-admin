//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_action.g.dart';

/// ObjectAction
///
/// Properties:
/// * [id]
/// * [label]
/// * [method]
/// * [href]
/// * [scope]
@BuiltValue()
abstract class ObjectAction
    implements Built<ObjectAction, ObjectActionBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'method')
  ObjectActionMethodEnum get method;
  // enum methodEnum {  GET,  POST,  PUT,  PATCH,  DELETE,  };

  @BuiltValueField(wireName: r'href')
  String get href;

  @BuiltValueField(wireName: r'scope')
  ObjectActionScopeEnum get scope;
  // enum scopeEnum {  read,  agent,  admin,  };

  ObjectAction._();

  factory ObjectAction([void updates(ObjectActionBuilder b)]) = _$ObjectAction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectActionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectAction> get serializer => _$ObjectActionSerializer();
}

class _$ObjectActionSerializer implements PrimitiveSerializer<ObjectAction> {
  @override
  final Iterable<Type> types = const [ObjectAction, _$ObjectAction];

  @override
  final String wireName = r'ObjectAction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectAction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(ObjectActionMethodEnum),
    );
    yield r'href';
    yield serializers.serialize(
      object.href,
      specifiedType: const FullType(String),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(ObjectActionScopeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ObjectAction object, {
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
    required ObjectActionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ObjectActionMethodEnum),
                  )
                  as ObjectActionMethodEnum;
          result.method = valueDes;
          break;
        case r'href':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.href = valueDes;
          break;
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ObjectActionScopeEnum),
                  )
                  as ObjectActionScopeEnum;
          result.scope = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObjectAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectActionBuilder();
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

class ObjectActionMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GET')
  static const ObjectActionMethodEnum GET = _$objectActionMethodEnum_GET;
  @BuiltValueEnumConst(wireName: r'POST')
  static const ObjectActionMethodEnum POST = _$objectActionMethodEnum_POST;
  @BuiltValueEnumConst(wireName: r'PUT')
  static const ObjectActionMethodEnum PUT = _$objectActionMethodEnum_PUT;
  @BuiltValueEnumConst(wireName: r'PATCH')
  static const ObjectActionMethodEnum PATCH = _$objectActionMethodEnum_PATCH;
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const ObjectActionMethodEnum DELETE = _$objectActionMethodEnum_DELETE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ObjectActionMethodEnum unknownDefaultOpenApi =
      _$objectActionMethodEnum_unknownDefaultOpenApi;

  static Serializer<ObjectActionMethodEnum> get serializer =>
      _$objectActionMethodEnumSerializer;

  const ObjectActionMethodEnum._(String name) : super(name);

  static BuiltSet<ObjectActionMethodEnum> get values =>
      _$objectActionMethodEnumValues;
  static ObjectActionMethodEnum valueOf(String name) =>
      _$objectActionMethodEnumValueOf(name);
}

class ObjectActionScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const ObjectActionScopeEnum read = _$objectActionScopeEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const ObjectActionScopeEnum agent = _$objectActionScopeEnum_agent;
  @BuiltValueEnumConst(wireName: r'admin')
  static const ObjectActionScopeEnum admin = _$objectActionScopeEnum_admin;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ObjectActionScopeEnum unknownDefaultOpenApi =
      _$objectActionScopeEnum_unknownDefaultOpenApi;

  static Serializer<ObjectActionScopeEnum> get serializer =>
      _$objectActionScopeEnumSerializer;

  const ObjectActionScopeEnum._(String name) : super(name);

  static BuiltSet<ObjectActionScopeEnum> get values =>
      _$objectActionScopeEnumValues;
  static ObjectActionScopeEnum valueOf(String name) =>
      _$objectActionScopeEnumValueOf(name);
}
