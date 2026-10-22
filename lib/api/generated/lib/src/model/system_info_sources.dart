//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_sources.g.dart';

/// SystemInfoSources
///
/// Properties:
/// * [total]
/// * [enabled]
/// * [healthy]
/// * [degraded]
/// * [failing]
@BuiltValue()
abstract class SystemInfoSources
    implements Built<SystemInfoSources, SystemInfoSourcesBuilder> {
  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'enabled')
  int? get enabled;

  @BuiltValueField(wireName: r'healthy')
  int? get healthy;

  @BuiltValueField(wireName: r'degraded')
  int? get degraded;

  @BuiltValueField(wireName: r'failing')
  int? get failing;

  SystemInfoSources._();

  factory SystemInfoSources([void updates(SystemInfoSourcesBuilder b)]) =
      _$SystemInfoSources;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoSourcesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoSources> get serializer =>
      _$SystemInfoSourcesSerializer();
}

class _$SystemInfoSourcesSerializer
    implements PrimitiveSerializer<SystemInfoSources> {
  @override
  final Iterable<Type> types = const [SystemInfoSources, _$SystemInfoSources];

  @override
  final String wireName = r'SystemInfoSources';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoSources object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(int),
      );
    }
    if (object.healthy != null) {
      yield r'healthy';
      yield serializers.serialize(
        object.healthy,
        specifiedType: const FullType(int),
      );
    }
    if (object.degraded != null) {
      yield r'degraded';
      yield serializers.serialize(
        object.degraded,
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
    SystemInfoSources object, {
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
    required SystemInfoSourcesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.total = valueDes;
          break;
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
        case r'healthy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.healthy = valueDes;
          break;
        case r'degraded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.degraded = valueDes;
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
  SystemInfoSources deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoSourcesBuilder();
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
