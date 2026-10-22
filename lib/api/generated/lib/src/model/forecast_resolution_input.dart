//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_resolution_input.g.dart';

/// Manual resolution with evidence
///
/// Properties:
/// * [outcome] - Binary `yes`/`no`, or a label of a multiple/ordered question
/// * [value] - Numeric questions
/// * [evidence] - Pinned evidence refs
/// * [note]
@BuiltValue()
abstract class ForecastResolutionInput
    implements Built<ForecastResolutionInput, ForecastResolutionInputBuilder> {
  /// Binary `yes`/`no`, or a label of a multiple/ordered question
  @BuiltValueField(wireName: r'outcome')
  String? get outcome;

  /// Numeric questions
  @BuiltValueField(wireName: r'value')
  num? get value;

  /// Pinned evidence refs
  @BuiltValueField(wireName: r'evidence')
  BuiltList<String> get evidence;

  @BuiltValueField(wireName: r'note')
  String? get note;

  ForecastResolutionInput._();

  factory ForecastResolutionInput(
          [void updates(ForecastResolutionInputBuilder b)]) =
      _$ForecastResolutionInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastResolutionInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastResolutionInput> get serializer =>
      _$ForecastResolutionInputSerializer();
}

class _$ForecastResolutionInputSerializer
    implements PrimitiveSerializer<ForecastResolutionInput> {
  @override
  final Iterable<Type> types = const [
    ForecastResolutionInput,
    _$ForecastResolutionInput
  ];

  @override
  final String wireName = r'ForecastResolutionInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastResolutionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.outcome != null) {
      yield r'outcome';
      yield serializers.serialize(
        object.outcome,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'evidence';
    yield serializers.serialize(
      object.evidence,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastResolutionInput object, {
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
    required ForecastResolutionInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'outcome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.outcome = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'evidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.evidence.replace(valueDes);
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastResolutionInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastResolutionInputBuilder();
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
