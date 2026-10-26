//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aggregator_config.g.dart';

/// Configure one domain's first-party aggregator
///
/// Properties:
/// * [enabled]
/// * [mode]
/// * [endpoint]
/// * [config] - Domain-specific settings (receiver, feed URL, decoders)
/// * [disableSupersededSources] - Default the public/mirror sources off once this aggregator is live (nothing is removed)
@BuiltValue()
abstract class AggregatorConfig
    implements Built<AggregatorConfig, AggregatorConfigBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'mode')
  String? get mode;

  @BuiltValueField(wireName: r'endpoint')
  String? get endpoint;

  /// Domain-specific settings (receiver, feed URL, decoders)
  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  /// Default the public/mirror sources off once this aggregator is live (nothing is removed)
  @BuiltValueField(wireName: r'disableSupersededSources')
  bool? get disableSupersededSources;

  AggregatorConfig._();

  factory AggregatorConfig([void updates(AggregatorConfigBuilder b)]) =
      _$AggregatorConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AggregatorConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AggregatorConfig> get serializer =>
      _$AggregatorConfigSerializer();
}

class _$AggregatorConfigSerializer
    implements PrimitiveSerializer<AggregatorConfig> {
  @override
  final Iterable<Type> types = const [AggregatorConfig, _$AggregatorConfig];

  @override
  final String wireName = r'AggregatorConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AggregatorConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(String),
      );
    }
    if (object.endpoint != null) {
      yield r'endpoint';
      yield serializers.serialize(
        object.endpoint,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.disableSupersededSources != null) {
      yield r'disableSupersededSources';
      yield serializers.serialize(
        object.disableSupersededSources,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AggregatorConfig object, {
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
    required AggregatorConfigBuilder result,
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
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'endpoint':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.endpoint = valueDes;
          break;
        case r'config':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        case r'disableSupersededSources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.disableSupersededSources = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AggregatorConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregatorConfigBuilder();
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
