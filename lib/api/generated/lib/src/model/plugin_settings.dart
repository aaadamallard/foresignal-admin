//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'plugin_settings.g.dart';

/// Settings `plugins` (disabled by default)
///
/// Properties:
/// * [enabled]
@BuiltValue()
abstract class PluginSettings
    implements Built<PluginSettings, PluginSettingsBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  PluginSettings._();

  factory PluginSettings([void updates(PluginSettingsBuilder b)]) =
      _$PluginSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PluginSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PluginSettings> get serializer =>
      _$PluginSettingsSerializer();
}

class _$PluginSettingsSerializer
    implements PrimitiveSerializer<PluginSettings> {
  @override
  final Iterable<Type> types = const [PluginSettings, _$PluginSettings];

  @override
  final String wireName = r'PluginSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PluginSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PluginSettings object, {
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
    required PluginSettingsBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PluginSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PluginSettingsBuilder();
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
