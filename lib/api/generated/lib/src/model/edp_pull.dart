//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_pull.g.dart';

/// Provider items endpoint Foresignal polls
///
/// Properties:
/// * [itemsUrl]
/// * [intervalSeconds]
/// * [auth]
/// * [header]
@BuiltValue()
abstract class EdpPull implements Built<EdpPull, EdpPullBuilder> {
  @BuiltValueField(wireName: r'itemsUrl')
  String get itemsUrl;

  @BuiltValueField(wireName: r'intervalSeconds')
  int? get intervalSeconds;

  @BuiltValueField(wireName: r'auth')
  EdpPullAuthEnum? get auth;
  // enum authEnum {  none,  bearer,  header,  basic,  };

  @BuiltValueField(wireName: r'header')
  String? get header;

  EdpPull._();

  factory EdpPull([void updates(EdpPullBuilder b)]) = _$EdpPull;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpPullBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpPull> get serializer => _$EdpPullSerializer();
}

class _$EdpPullSerializer implements PrimitiveSerializer<EdpPull> {
  @override
  final Iterable<Type> types = const [EdpPull, _$EdpPull];

  @override
  final String wireName = r'EdpPull';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpPull object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'itemsUrl';
    yield serializers.serialize(
      object.itemsUrl,
      specifiedType: const FullType(String),
    );
    if (object.intervalSeconds != null) {
      yield r'intervalSeconds';
      yield serializers.serialize(
        object.intervalSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.auth != null) {
      yield r'auth';
      yield serializers.serialize(
        object.auth,
        specifiedType: const FullType(EdpPullAuthEnum),
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
    EdpPull object, {
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
    required EdpPullBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'itemsUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.itemsUrl = valueDes;
          break;
        case r'intervalSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.intervalSeconds = valueDes;
          break;
        case r'auth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdpPullAuthEnum),
                  )
                  as EdpPullAuthEnum?;
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
  EdpPull deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpPullBuilder();
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

class EdpPullAuthEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const EdpPullAuthEnum none = _$edpPullAuthEnum_none;
  @BuiltValueEnumConst(wireName: r'bearer')
  static const EdpPullAuthEnum bearer = _$edpPullAuthEnum_bearer;
  @BuiltValueEnumConst(wireName: r'header')
  static const EdpPullAuthEnum header = _$edpPullAuthEnum_header;
  @BuiltValueEnumConst(wireName: r'basic')
  static const EdpPullAuthEnum basic = _$edpPullAuthEnum_basic;

  static Serializer<EdpPullAuthEnum> get serializer =>
      _$edpPullAuthEnumSerializer;

  const EdpPullAuthEnum._(String name) : super(name);

  static BuiltSet<EdpPullAuthEnum> get values => _$edpPullAuthEnumValues;
  static EdpPullAuthEnum valueOf(String name) => _$edpPullAuthEnumValueOf(name);
}
