//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_mcp_transports.g.dart';

/// Registered transports
///
/// Properties:
/// * [streamable]
/// * [legacySse] - `foresignal.mcp.legacy-sse.enabled`: /mcp/sse + /mcp/message
@BuiltValue()
abstract class SystemInfoMcpTransports
    implements Built<SystemInfoMcpTransports, SystemInfoMcpTransportsBuilder> {
  @BuiltValueField(wireName: r'streamable')
  bool? get streamable;

  /// `foresignal.mcp.legacy-sse.enabled`: /mcp/sse + /mcp/message
  @BuiltValueField(wireName: r'legacySse')
  bool? get legacySse;

  SystemInfoMcpTransports._();

  factory SystemInfoMcpTransports([
    void updates(SystemInfoMcpTransportsBuilder b),
  ]) = _$SystemInfoMcpTransports;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoMcpTransportsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoMcpTransports> get serializer =>
      _$SystemInfoMcpTransportsSerializer();
}

class _$SystemInfoMcpTransportsSerializer
    implements PrimitiveSerializer<SystemInfoMcpTransports> {
  @override
  final Iterable<Type> types = const [
    SystemInfoMcpTransports,
    _$SystemInfoMcpTransports,
  ];

  @override
  final String wireName = r'SystemInfoMcpTransports';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoMcpTransports object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.streamable != null) {
      yield r'streamable';
      yield serializers.serialize(
        object.streamable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.legacySse != null) {
      yield r'legacySse';
      yield serializers.serialize(
        object.legacySse,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoMcpTransports object, {
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
    required SystemInfoMcpTransportsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'streamable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.streamable = valueDes;
          break;
        case r'legacySse':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.legacySse = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoMcpTransports deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoMcpTransportsBuilder();
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
