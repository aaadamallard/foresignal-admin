//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'param_spec.g.dart';

/// ParamSpec
///
/// Properties:
/// * [name]
/// * [type]
/// * [description]
/// * [default_]
/// * [required_]
/// * [allowed] - When non-empty, the only accepted values. For type lan-url it lists the accepted URL schemes instead (069): empty means http, https, ws and wss; tcp (tcp://host:port, resolved once to a loopback, RFC 1918 or unique-local address and pinned) and udp (udp://bindHost:port, bindHost 0.0.0.0, :: or a local interface address, with the required string-list companion allowSenders of private IPs or CIDRs) are accepted only when listed; so are mqtt and mqtts (083: an operator's broker, mqtt://host:port or mqtts://host:port, pinned to a private address like tcp). The port of a tcp, udp, mqtt or mqtts URL is always explicit.
@BuiltValue()
abstract class ParamSpec implements Built<ParamSpec, ParamSpecBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  ParamSpecTypeEnum get type;
  // enum typeEnum {  string,  integer,  number,  boolean,  duration,  bbox,  string-list,  lan-url,  inbox-path,  json,  };

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'default')
  JsonObject? get default_;

  @BuiltValueField(wireName: r'required')
  bool? get required_;

  /// When non-empty, the only accepted values. For type lan-url it lists the accepted URL schemes instead (069): empty means http, https, ws and wss; tcp (tcp://host:port, resolved once to a loopback, RFC 1918 or unique-local address and pinned) and udp (udp://bindHost:port, bindHost 0.0.0.0, :: or a local interface address, with the required string-list companion allowSenders of private IPs or CIDRs) are accepted only when listed; so are mqtt and mqtts (083: an operator's broker, mqtt://host:port or mqtts://host:port, pinned to a private address like tcp). The port of a tcp, udp, mqtt or mqtts URL is always explicit.
  @BuiltValueField(wireName: r'allowed')
  BuiltList<String>? get allowed;

  ParamSpec._();

  factory ParamSpec([void updates(ParamSpecBuilder b)]) = _$ParamSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParamSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParamSpec> get serializer => _$ParamSpecSerializer();
}

class _$ParamSpecSerializer implements PrimitiveSerializer<ParamSpec> {
  @override
  final Iterable<Type> types = const [ParamSpec, _$ParamSpec];

  @override
  final String wireName = r'ParamSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParamSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ParamSpecTypeEnum),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.required_ != null) {
      yield r'required';
      yield serializers.serialize(
        object.required_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowed != null) {
      yield r'allowed';
      yield serializers.serialize(
        object.allowed,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ParamSpec object, {
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
    required ParamSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ParamSpecTypeEnum),
                  )
                  as ParamSpecTypeEnum;
          result.type = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'default':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        case r'required':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.required_ = valueDes;
          break;
        case r'allowed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.allowed.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParamSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParamSpecBuilder();
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

class ParamSpecTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'string')
  static const ParamSpecTypeEnum string = _$paramSpecTypeEnum_string;
  @BuiltValueEnumConst(wireName: r'integer')
  static const ParamSpecTypeEnum integer = _$paramSpecTypeEnum_integer;
  @BuiltValueEnumConst(wireName: r'number')
  static const ParamSpecTypeEnum number = _$paramSpecTypeEnum_number;
  @BuiltValueEnumConst(wireName: r'boolean')
  static const ParamSpecTypeEnum boolean = _$paramSpecTypeEnum_boolean;
  @BuiltValueEnumConst(wireName: r'duration')
  static const ParamSpecTypeEnum duration = _$paramSpecTypeEnum_duration;
  @BuiltValueEnumConst(wireName: r'bbox')
  static const ParamSpecTypeEnum bbox = _$paramSpecTypeEnum_bbox;
  @BuiltValueEnumConst(wireName: r'string-list')
  static const ParamSpecTypeEnum stringList = _$paramSpecTypeEnum_stringList;
  @BuiltValueEnumConst(wireName: r'lan-url')
  static const ParamSpecTypeEnum lanUrl = _$paramSpecTypeEnum_lanUrl;
  @BuiltValueEnumConst(wireName: r'inbox-path')
  static const ParamSpecTypeEnum inboxPath = _$paramSpecTypeEnum_inboxPath;
  @BuiltValueEnumConst(wireName: r'json')
  static const ParamSpecTypeEnum json = _$paramSpecTypeEnum_json;

  static Serializer<ParamSpecTypeEnum> get serializer =>
      _$paramSpecTypeEnumSerializer;

  const ParamSpecTypeEnum._(String name) : super(name);

  static BuiltSet<ParamSpecTypeEnum> get values => _$paramSpecTypeEnumValues;
  static ParamSpecTypeEnum valueOf(String name) =>
      _$paramSpecTypeEnumValueOf(name);
}
