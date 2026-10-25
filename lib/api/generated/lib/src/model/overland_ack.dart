//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'overland_ack.g.dart';

/// Reply Overland requires; any other reply makes the app retry (039)
///
/// Properties:
/// * [result]
@BuiltValue()
abstract class OverlandAck implements Built<OverlandAck, OverlandAckBuilder> {
  @BuiltValueField(wireName: r'result')
  OverlandAckResultEnum get result;
  // enum resultEnum {  ok,  };

  OverlandAck._();

  factory OverlandAck([void updates(OverlandAckBuilder b)]) = _$OverlandAck;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OverlandAckBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OverlandAck> get serializer => _$OverlandAckSerializer();
}

class _$OverlandAckSerializer implements PrimitiveSerializer<OverlandAck> {
  @override
  final Iterable<Type> types = const [OverlandAck, _$OverlandAck];

  @override
  final String wireName = r'OverlandAck';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OverlandAck object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'result';
    yield serializers.serialize(
      object.result,
      specifiedType: const FullType(OverlandAckResultEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OverlandAck object, {
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
    required OverlandAckBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'result':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(OverlandAckResultEnum),
                  )
                  as OverlandAckResultEnum;
          result.result = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OverlandAck deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OverlandAckBuilder();
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

class OverlandAckResultEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const OverlandAckResultEnum ok = _$overlandAckResultEnum_ok;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OverlandAckResultEnum unknownDefaultOpenApi =
      _$overlandAckResultEnum_unknownDefaultOpenApi;

  static Serializer<OverlandAckResultEnum> get serializer =>
      _$overlandAckResultEnumSerializer;

  const OverlandAckResultEnum._(String name) : super(name);

  static BuiltSet<OverlandAckResultEnum> get values =>
      _$overlandAckResultEnumValues;
  static OverlandAckResultEnum valueOf(String name) =>
      _$overlandAckResultEnumValueOf(name);
}
