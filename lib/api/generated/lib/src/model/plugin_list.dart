//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'plugin_list.g.dart';

/// Plugin subsystem state and discovered plugins
///
/// Properties:
/// * [enabled]
/// * [plugins]
@BuiltValue()
abstract class PluginList implements Built<PluginList, PluginListBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'plugins')
  BuiltList<Plugin> get plugins;

  PluginList._();

  factory PluginList([void updates(PluginListBuilder b)]) = _$PluginList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PluginListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PluginList> get serializer => _$PluginListSerializer();
}

class _$PluginListSerializer implements PrimitiveSerializer<PluginList> {
  @override
  final Iterable<Type> types = const [PluginList, _$PluginList];

  @override
  final String wireName = r'PluginList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PluginList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'plugins';
    yield serializers.serialize(
      object.plugins,
      specifiedType: const FullType(BuiltList, [FullType(Plugin)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PluginList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PluginListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'plugins':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Plugin)]),
          ) as BuiltList<Plugin>;
          result.plugins.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PluginList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PluginListBuilder();
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
