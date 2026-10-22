//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/intel_corroboration_event_quality.dart';
import 'package:foresignal_api/src/model/intel_corroboration_auto_corroborate.dart';
import 'package:foresignal_api/src/model/intel_corroboration_situation_activation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_corroboration.g.dart';

/// The tunable corroboration policy (154): the \"promote to a trusted signal\" gates, each defaulting to its historical constant. A PUT replaces the document; members left out return to their defaults.
///
/// Properties:
/// * [eventQuality]
/// * [situationActivation]
/// * [autoCorroborate]
@BuiltValue()
abstract class IntelCorroboration
    implements Built<IntelCorroboration, IntelCorroborationBuilder> {
  @BuiltValueField(wireName: r'eventQuality')
  IntelCorroborationEventQuality? get eventQuality;

  @BuiltValueField(wireName: r'situationActivation')
  IntelCorroborationSituationActivation? get situationActivation;

  @BuiltValueField(wireName: r'autoCorroborate')
  IntelCorroborationAutoCorroborate? get autoCorroborate;

  IntelCorroboration._();

  factory IntelCorroboration([void updates(IntelCorroborationBuilder b)]) =
      _$IntelCorroboration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelCorroborationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelCorroboration> get serializer =>
      _$IntelCorroborationSerializer();
}

class _$IntelCorroborationSerializer
    implements PrimitiveSerializer<IntelCorroboration> {
  @override
  final Iterable<Type> types = const [IntelCorroboration, _$IntelCorroboration];

  @override
  final String wireName = r'IntelCorroboration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelCorroboration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.eventQuality != null) {
      yield r'eventQuality';
      yield serializers.serialize(
        object.eventQuality,
        specifiedType: const FullType(IntelCorroborationEventQuality),
      );
    }
    if (object.situationActivation != null) {
      yield r'situationActivation';
      yield serializers.serialize(
        object.situationActivation,
        specifiedType: const FullType(IntelCorroborationSituationActivation),
      );
    }
    if (object.autoCorroborate != null) {
      yield r'autoCorroborate';
      yield serializers.serialize(
        object.autoCorroborate,
        specifiedType: const FullType(IntelCorroborationAutoCorroborate),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelCorroboration object, {
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
    required IntelCorroborationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'eventQuality':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IntelCorroborationEventQuality,
                    ),
                  )
                  as IntelCorroborationEventQuality?;
          if (valueDes == null) continue;
          result.eventQuality.replace(valueDes);
          break;
        case r'situationActivation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IntelCorroborationSituationActivation,
                    ),
                  )
                  as IntelCorroborationSituationActivation?;
          if (valueDes == null) continue;
          result.situationActivation.replace(valueDes);
          break;
        case r'autoCorroborate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IntelCorroborationAutoCorroborate,
                    ),
                  )
                  as IntelCorroborationAutoCorroborate?;
          if (valueDes == null) continue;
          result.autoCorroborate.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelCorroboration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelCorroborationBuilder();
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
