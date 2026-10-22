//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'window_status_states.g.dart';

/// Group counts per state
///
/// Properties:
/// * [active]
/// * [clear]
/// * [unknown]
/// * [learning]
@BuiltValue()
abstract class WindowStatusStates
    implements Built<WindowStatusStates, WindowStatusStatesBuilder> {
  @BuiltValueField(wireName: r'active')
  int? get active;

  @BuiltValueField(wireName: r'clear')
  int? get clear;

  @BuiltValueField(wireName: r'unknown')
  int? get unknown;

  @BuiltValueField(wireName: r'learning')
  int? get learning;

  WindowStatusStates._();

  factory WindowStatusStates([void updates(WindowStatusStatesBuilder b)]) =
      _$WindowStatusStates;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WindowStatusStatesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WindowStatusStates> get serializer =>
      _$WindowStatusStatesSerializer();
}

class _$WindowStatusStatesSerializer
    implements PrimitiveSerializer<WindowStatusStates> {
  @override
  final Iterable<Type> types = const [WindowStatusStates, _$WindowStatusStates];

  @override
  final String wireName = r'WindowStatusStates';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WindowStatusStates object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(int),
      );
    }
    if (object.clear != null) {
      yield r'clear';
      yield serializers.serialize(
        object.clear,
        specifiedType: const FullType(int),
      );
    }
    if (object.unknown != null) {
      yield r'unknown';
      yield serializers.serialize(
        object.unknown,
        specifiedType: const FullType(int),
      );
    }
    if (object.learning != null) {
      yield r'learning';
      yield serializers.serialize(
        object.learning,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WindowStatusStates object, {
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
    required WindowStatusStatesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'active':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        case r'clear':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.clear = valueDes;
          break;
        case r'unknown':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.unknown = valueDes;
          break;
        case r'learning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.learning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WindowStatusStates deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WindowStatusStatesBuilder();
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
