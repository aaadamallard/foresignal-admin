//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'plugin_update.g.dart';

/// Enable or disable a plugin after reviewing its sha256
///
/// Properties:
/// * [enabled]
/// * [sha256] - Must equal the plugin file's actual hash to enable it
@BuiltValue()
abstract class PluginUpdate
    implements Built<PluginUpdate, PluginUpdateBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Must equal the plugin file's actual hash to enable it
  @BuiltValueField(wireName: r'sha256')
  String? get sha256;

  PluginUpdate._();

  factory PluginUpdate([void updates(PluginUpdateBuilder b)]) = _$PluginUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PluginUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PluginUpdate> get serializer => _$PluginUpdateSerializer();
}

class _$PluginUpdateSerializer implements PrimitiveSerializer<PluginUpdate> {
  @override
  final Iterable<Type> types = const [PluginUpdate, _$PluginUpdate];

  @override
  final String wireName = r'PluginUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PluginUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.sha256 != null) {
      yield r'sha256';
      yield serializers.serialize(
        object.sha256,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PluginUpdate object, {
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
    required PluginUpdateBuilder result,
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
        case r'sha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sha256 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PluginUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PluginUpdateBuilder();
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
