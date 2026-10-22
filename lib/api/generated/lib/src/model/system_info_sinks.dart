//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_sinks.g.dart';

/// Outbound sinks
///
/// Properties:
/// * [enabled]
/// * [failing]
@BuiltValue()
abstract class SystemInfoSinks
    implements Built<SystemInfoSinks, SystemInfoSinksBuilder> {
  @BuiltValueField(wireName: r'enabled')
  int? get enabled;

  @BuiltValueField(wireName: r'failing')
  int? get failing;

  SystemInfoSinks._();

  factory SystemInfoSinks([void updates(SystemInfoSinksBuilder b)]) =
      _$SystemInfoSinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoSinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoSinks> get serializer =>
      _$SystemInfoSinksSerializer();
}

class _$SystemInfoSinksSerializer
    implements PrimitiveSerializer<SystemInfoSinks> {
  @override
  final Iterable<Type> types = const [SystemInfoSinks, _$SystemInfoSinks];

  @override
  final String wireName = r'SystemInfoSinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoSinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(int),
      );
    }
    if (object.failing != null) {
      yield r'failing';
      yield serializers.serialize(
        object.failing,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoSinks object, {
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
    required SystemInfoSinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'failing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.failing = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoSinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoSinksBuilder();
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
