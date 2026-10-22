//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_coincidence_baseline.g.dart';

/// Coincidence baseline from the linked event study's placebo distribution
///
/// Properties:
/// * [placeboRate]
/// * [method]
/// * [eventStudyId]
/// * [nPlacebo]
@BuiltValue()
abstract class HypothesisCoincidenceBaseline
    implements
        Built<HypothesisCoincidenceBaseline,
            HypothesisCoincidenceBaselineBuilder> {
  @BuiltValueField(wireName: r'placeboRate')
  num get placeboRate;

  @BuiltValueField(wireName: r'method')
  String get method;

  @BuiltValueField(wireName: r'eventStudyId')
  String? get eventStudyId;

  @BuiltValueField(wireName: r'nPlacebo')
  int? get nPlacebo;

  HypothesisCoincidenceBaseline._();

  factory HypothesisCoincidenceBaseline(
          [void updates(HypothesisCoincidenceBaselineBuilder b)]) =
      _$HypothesisCoincidenceBaseline;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisCoincidenceBaselineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisCoincidenceBaseline> get serializer =>
      _$HypothesisCoincidenceBaselineSerializer();
}

class _$HypothesisCoincidenceBaselineSerializer
    implements PrimitiveSerializer<HypothesisCoincidenceBaseline> {
  @override
  final Iterable<Type> types = const [
    HypothesisCoincidenceBaseline,
    _$HypothesisCoincidenceBaseline
  ];

  @override
  final String wireName = r'HypothesisCoincidenceBaseline';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisCoincidenceBaseline object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'placeboRate';
    yield serializers.serialize(
      object.placeboRate,
      specifiedType: const FullType(num),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(String),
    );
    if (object.eventStudyId != null) {
      yield r'eventStudyId';
      yield serializers.serialize(
        object.eventStudyId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nPlacebo != null) {
      yield r'nPlacebo';
      yield serializers.serialize(
        object.nPlacebo,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisCoincidenceBaseline object, {
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
    required HypothesisCoincidenceBaselineBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'placeboRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.placeboRate = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.method = valueDes;
          break;
        case r'eventStudyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.eventStudyId = valueDes;
          break;
        case r'nPlacebo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.nPlacebo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisCoincidenceBaseline deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisCoincidenceBaselineBuilder();
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
