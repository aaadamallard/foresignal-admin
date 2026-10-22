//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/window_status_states.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'window_status.g.dart';

/// Summary of a windowed rule's state across its groups
///
/// Properties:
/// * [states]
/// * [groups]
/// * [groupsTruncated]
/// * [learningUntil] - Anomaly rules: when every slot is expected to have minWeeks samples
/// * [lastEvaluatedAt]
/// * [lowConfidence] - hour-of-day anomaly rules started before minWeeks
@BuiltValue()
abstract class WindowStatus
    implements Built<WindowStatus, WindowStatusBuilder> {
  @BuiltValueField(wireName: r'states')
  WindowStatusStates get states;

  @BuiltValueField(wireName: r'groups')
  int get groups;

  @BuiltValueField(wireName: r'groupsTruncated')
  bool? get groupsTruncated;

  /// Anomaly rules: when every slot is expected to have minWeeks samples
  @BuiltValueField(wireName: r'learningUntil')
  DateTime? get learningUntil;

  @BuiltValueField(wireName: r'lastEvaluatedAt')
  DateTime? get lastEvaluatedAt;

  /// hour-of-day anomaly rules started before minWeeks
  @BuiltValueField(wireName: r'lowConfidence')
  bool? get lowConfidence;

  WindowStatus._();

  factory WindowStatus([void updates(WindowStatusBuilder b)]) = _$WindowStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WindowStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WindowStatus> get serializer => _$WindowStatusSerializer();
}

class _$WindowStatusSerializer implements PrimitiveSerializer<WindowStatus> {
  @override
  final Iterable<Type> types = const [WindowStatus, _$WindowStatus];

  @override
  final String wireName = r'WindowStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WindowStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'states';
    yield serializers.serialize(
      object.states,
      specifiedType: const FullType(WindowStatusStates),
    );
    yield r'groups';
    yield serializers.serialize(
      object.groups,
      specifiedType: const FullType(int),
    );
    if (object.groupsTruncated != null) {
      yield r'groupsTruncated';
      yield serializers.serialize(
        object.groupsTruncated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.learningUntil != null) {
      yield r'learningUntil';
      yield serializers.serialize(
        object.learningUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastEvaluatedAt != null) {
      yield r'lastEvaluatedAt';
      yield serializers.serialize(
        object.lastEvaluatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lowConfidence != null) {
      yield r'lowConfidence';
      yield serializers.serialize(
        object.lowConfidence,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WindowStatus object, {
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
    required WindowStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'states':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WindowStatusStates),
          ) as WindowStatusStates;
          result.states.replace(valueDes);
          break;
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.groups = valueDes;
          break;
        case r'groupsTruncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.groupsTruncated = valueDes;
          break;
        case r'learningUntil':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.learningUntil = valueDes;
          break;
        case r'lastEvaluatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastEvaluatedAt = valueDes;
          break;
        case r'lowConfidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.lowConfidence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WindowStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WindowStatusBuilder();
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
