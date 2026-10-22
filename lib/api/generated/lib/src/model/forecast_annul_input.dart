//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_annul_input.g.dart';

/// Annul a question with a reason
///
/// Properties:
/// * [reason]
@BuiltValue()
abstract class ForecastAnnulInput
    implements Built<ForecastAnnulInput, ForecastAnnulInputBuilder> {
  @BuiltValueField(wireName: r'reason')
  String get reason;

  ForecastAnnulInput._();

  factory ForecastAnnulInput([void updates(ForecastAnnulInputBuilder b)]) =
      _$ForecastAnnulInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastAnnulInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastAnnulInput> get serializer =>
      _$ForecastAnnulInputSerializer();
}

class _$ForecastAnnulInputSerializer
    implements PrimitiveSerializer<ForecastAnnulInput> {
  @override
  final Iterable<Type> types = const [ForecastAnnulInput, _$ForecastAnnulInput];

  @override
  final String wireName = r'ForecastAnnulInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastAnnulInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastAnnulInput object, {
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
    required ForecastAnnulInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastAnnulInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastAnnulInputBuilder();
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
