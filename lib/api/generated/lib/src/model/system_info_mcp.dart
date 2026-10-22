//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/system_info_mcp_transports.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_mcp.g.dart';

/// MCP server state (025)
///
/// Properties:
/// * [enabled]
/// * [sessions]
/// * [transports]
/// * [tools] - Registered tools
@BuiltValue()
abstract class SystemInfoMcp
    implements Built<SystemInfoMcp, SystemInfoMcpBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'sessions')
  int? get sessions;

  @BuiltValueField(wireName: r'transports')
  SystemInfoMcpTransports? get transports;

  /// Registered tools
  @BuiltValueField(wireName: r'tools')
  int? get tools;

  SystemInfoMcp._();

  factory SystemInfoMcp([void updates(SystemInfoMcpBuilder b)]) =
      _$SystemInfoMcp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoMcpBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoMcp> get serializer =>
      _$SystemInfoMcpSerializer();
}

class _$SystemInfoMcpSerializer implements PrimitiveSerializer<SystemInfoMcp> {
  @override
  final Iterable<Type> types = const [SystemInfoMcp, _$SystemInfoMcp];

  @override
  final String wireName = r'SystemInfoMcp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoMcp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sessions != null) {
      yield r'sessions';
      yield serializers.serialize(
        object.sessions,
        specifiedType: const FullType(int),
      );
    }
    if (object.transports != null) {
      yield r'transports';
      yield serializers.serialize(
        object.transports,
        specifiedType: const FullType(SystemInfoMcpTransports),
      );
    }
    if (object.tools != null) {
      yield r'tools';
      yield serializers.serialize(
        object.tools,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoMcp object, {
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
    required SystemInfoMcpBuilder result,
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
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'sessions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sessions = valueDes;
          break;
        case r'transports':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SystemInfoMcpTransports,
                    ),
                  )
                  as SystemInfoMcpTransports?;
          if (valueDes == null) continue;
          result.transports.replace(valueDes);
          break;
        case r'tools':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.tools = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoMcp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoMcpBuilder();
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
