//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'escalation_step.g.dart';

/// One escalation step (033)
///
/// Properties:
/// * [afterMinutes] - Strictly increasing across steps
/// * [channelIds]
/// * [includePush]
@BuiltValue()
abstract class EscalationStep
    implements Built<EscalationStep, EscalationStepBuilder> {
  /// Strictly increasing across steps
  @BuiltValueField(wireName: r'afterMinutes')
  int get afterMinutes;

  @BuiltValueField(wireName: r'channelIds')
  BuiltList<String>? get channelIds;

  @BuiltValueField(wireName: r'includePush')
  bool? get includePush;

  EscalationStep._();

  factory EscalationStep([void updates(EscalationStepBuilder b)]) =
      _$EscalationStep;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EscalationStepBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EscalationStep> get serializer =>
      _$EscalationStepSerializer();
}

class _$EscalationStepSerializer
    implements PrimitiveSerializer<EscalationStep> {
  @override
  final Iterable<Type> types = const [EscalationStep, _$EscalationStep];

  @override
  final String wireName = r'EscalationStep';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EscalationStep object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'afterMinutes';
    yield serializers.serialize(
      object.afterMinutes,
      specifiedType: const FullType(int),
    );
    if (object.channelIds != null) {
      yield r'channelIds';
      yield serializers.serialize(
        object.channelIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.includePush != null) {
      yield r'includePush';
      yield serializers.serialize(
        object.includePush,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EscalationStep object, {
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
    required EscalationStepBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'afterMinutes':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.afterMinutes = valueDes;
          break;
        case r'channelIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.channelIds.replace(valueDes);
          break;
        case r'includePush':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.includePush = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EscalationStep deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EscalationStepBuilder();
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
