//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'propagation_graph_cross_platform_order_inner.g.dart';

/// Platform in first-observed order
///
/// Properties:
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [firstObservedAt]
@BuiltValue()
abstract class PropagationGraphCrossPlatformOrderInner
    implements
        Built<PropagationGraphCrossPlatformOrderInner,
            PropagationGraphCrossPlatformOrderInnerBuilder> {
  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  @BuiltValueField(wireName: r'firstObservedAt')
  DateTime get firstObservedAt;

  PropagationGraphCrossPlatformOrderInner._();

  factory PropagationGraphCrossPlatformOrderInner(
          [void updates(PropagationGraphCrossPlatformOrderInnerBuilder b)]) =
      _$PropagationGraphCrossPlatformOrderInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PropagationGraphCrossPlatformOrderInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PropagationGraphCrossPlatformOrderInner> get serializer =>
      _$PropagationGraphCrossPlatformOrderInnerSerializer();
}

class _$PropagationGraphCrossPlatformOrderInnerSerializer
    implements PrimitiveSerializer<PropagationGraphCrossPlatformOrderInner> {
  @override
  final Iterable<Type> types = const [
    PropagationGraphCrossPlatformOrderInner,
    _$PropagationGraphCrossPlatformOrderInner
  ];

  @override
  final String wireName = r'PropagationGraphCrossPlatformOrderInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PropagationGraphCrossPlatformOrderInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    yield r'firstObservedAt';
    yield serializers.serialize(
      object.firstObservedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PropagationGraphCrossPlatformOrderInner object, {
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
    required PropagationGraphCrossPlatformOrderInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.platform = valueDes;
          break;
        case r'firstObservedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.firstObservedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PropagationGraphCrossPlatformOrderInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PropagationGraphCrossPlatformOrderInnerBuilder();
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
