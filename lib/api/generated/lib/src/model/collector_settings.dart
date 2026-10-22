//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collector_settings.g.dart';

/// The collector's runtime settings (prompt 150).
///
/// Properties:
/// * [maxConcurrentPulls] - How many polling fetches may pull from upstream at once across every source: the size of the global pull governor. A stored or submitted value outside 1 to 16 is clamped. Streams are not counted.
@BuiltValue()
abstract class CollectorSettings
    implements Built<CollectorSettings, CollectorSettingsBuilder> {
  /// How many polling fetches may pull from upstream at once across every source: the size of the global pull governor. A stored or submitted value outside 1 to 16 is clamped. Streams are not counted.
  @BuiltValueField(wireName: r'maxConcurrentPulls')
  int get maxConcurrentPulls;

  CollectorSettings._();

  factory CollectorSettings([void updates(CollectorSettingsBuilder b)]) =
      _$CollectorSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectorSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectorSettings> get serializer =>
      _$CollectorSettingsSerializer();
}

class _$CollectorSettingsSerializer
    implements PrimitiveSerializer<CollectorSettings> {
  @override
  final Iterable<Type> types = const [CollectorSettings, _$CollectorSettings];

  @override
  final String wireName = r'CollectorSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectorSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'maxConcurrentPulls';
    yield serializers.serialize(
      object.maxConcurrentPulls,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CollectorSettings object, {
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
    required CollectorSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxConcurrentPulls':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.maxConcurrentPulls = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollectorSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectorSettingsBuilder();
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
