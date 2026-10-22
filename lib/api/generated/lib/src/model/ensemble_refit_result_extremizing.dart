//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ensemble_refit_result_extremizing.g.dart';

/// Extremizing factor a and whether it is enabled
///
/// Properties:
/// * [a]
/// * [enabled]
/// * [nResolutions]
/// * [distinctForecasterTypes]
/// * [logScoreImprovement] - Out-of-sample log-score improvement; enabled only when positive over ≥ 100 resolutions
@BuiltValue()
abstract class EnsembleRefitResultExtremizing
    implements
        Built<
          EnsembleRefitResultExtremizing,
          EnsembleRefitResultExtremizingBuilder
        > {
  @BuiltValueField(wireName: r'a')
  num get a;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'nResolutions')
  int get nResolutions;

  @BuiltValueField(wireName: r'distinctForecasterTypes')
  int get distinctForecasterTypes;

  /// Out-of-sample log-score improvement; enabled only when positive over ≥ 100 resolutions
  @BuiltValueField(wireName: r'logScoreImprovement')
  num? get logScoreImprovement;

  EnsembleRefitResultExtremizing._();

  factory EnsembleRefitResultExtremizing([
    void updates(EnsembleRefitResultExtremizingBuilder b),
  ]) = _$EnsembleRefitResultExtremizing;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnsembleRefitResultExtremizingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnsembleRefitResultExtremizing> get serializer =>
      _$EnsembleRefitResultExtremizingSerializer();
}

class _$EnsembleRefitResultExtremizingSerializer
    implements PrimitiveSerializer<EnsembleRefitResultExtremizing> {
  @override
  final Iterable<Type> types = const [
    EnsembleRefitResultExtremizing,
    _$EnsembleRefitResultExtremizing,
  ];

  @override
  final String wireName = r'EnsembleRefitResultExtremizing';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnsembleRefitResultExtremizing object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'a';
    yield serializers.serialize(object.a, specifiedType: const FullType(num));
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'nResolutions';
    yield serializers.serialize(
      object.nResolutions,
      specifiedType: const FullType(int),
    );
    yield r'distinctForecasterTypes';
    yield serializers.serialize(
      object.distinctForecasterTypes,
      specifiedType: const FullType(int),
    );
    if (object.logScoreImprovement != null) {
      yield r'logScoreImprovement';
      yield serializers.serialize(
        object.logScoreImprovement,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EnsembleRefitResultExtremizing object, {
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
    required EnsembleRefitResultExtremizingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'a':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.a = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'nResolutions':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.nResolutions = valueDes;
          break;
        case r'distinctForecasterTypes':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.distinctForecasterTypes = valueDes;
          break;
        case r'logScoreImprovement':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.logScoreImprovement = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EnsembleRefitResultExtremizing deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnsembleRefitResultExtremizingBuilder();
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
