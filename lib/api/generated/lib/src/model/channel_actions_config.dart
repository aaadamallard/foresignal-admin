//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'channel_actions_config.g.dart';

/// Notification action settings inside a channel's `config.actions` (033)
///
/// Properties:
/// * [enabled] - Default true for ntfy, webpush, telegram, matrix, pushover; false for every other type (confirm-page links in the body are an opt-in there)
/// * [list]
/// * [links] - Add confirm-page links to the body for channels without buttons
/// * [reactions] - Matrix: a ✅ reaction from `allowedSenders` acknowledges
@BuiltValue()
abstract class ChannelActionsConfig
    implements Built<ChannelActionsConfig, ChannelActionsConfigBuilder> {
  /// Default true for ntfy, webpush, telegram, matrix, pushover; false for every other type (confirm-page links in the body are an opt-in there)
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'list')
  BuiltList<String>? get list;

  /// Add confirm-page links to the body for channels without buttons
  @BuiltValueField(wireName: r'links')
  bool? get links;

  /// Matrix: a ✅ reaction from `allowedSenders` acknowledges
  @BuiltValueField(wireName: r'reactions')
  bool? get reactions;

  ChannelActionsConfig._();

  factory ChannelActionsConfig([void updates(ChannelActionsConfigBuilder b)]) =
      _$ChannelActionsConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChannelActionsConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChannelActionsConfig> get serializer =>
      _$ChannelActionsConfigSerializer();
}

class _$ChannelActionsConfigSerializer
    implements PrimitiveSerializer<ChannelActionsConfig> {
  @override
  final Iterable<Type> types = const [
    ChannelActionsConfig,
    _$ChannelActionsConfig
  ];

  @override
  final String wireName = r'ChannelActionsConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChannelActionsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.list != null) {
      yield r'list';
      yield serializers.serialize(
        object.list,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(bool),
      );
    }
    if (object.reactions != null) {
      yield r'reactions';
      yield serializers.serialize(
        object.reactions,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChannelActionsConfig object, {
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
    required ChannelActionsConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'list':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.list.replace(valueDes);
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.links = valueDes;
          break;
        case r'reactions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.reactions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChannelActionsConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChannelActionsConfigBuilder();
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
