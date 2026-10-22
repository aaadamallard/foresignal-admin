//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ensemble_refit_result_platt_inner.dart';
import 'package:foresignal_api/src/model/ensemble_refit_result_extremizing.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ensemble_refit_result_weights_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ensemble_refit_result.g.dart';

/// Outcome of the monthly ensemble refit: weights, Platt fits and the extremizing gate
///
/// Properties:
/// * [fittedAt]
/// * [extremizing]
/// * [platt]
/// * [weights]
@BuiltValue()
abstract class EnsembleRefitResult
    implements Built<EnsembleRefitResult, EnsembleRefitResultBuilder> {
  @BuiltValueField(wireName: r'fittedAt')
  DateTime get fittedAt;

  @BuiltValueField(wireName: r'extremizing')
  EnsembleRefitResultExtremizing get extremizing;

  @BuiltValueField(wireName: r'platt')
  BuiltList<EnsembleRefitResultPlattInner> get platt;

  @BuiltValueField(wireName: r'weights')
  BuiltList<EnsembleRefitResultWeightsInner> get weights;

  EnsembleRefitResult._();

  factory EnsembleRefitResult([void updates(EnsembleRefitResultBuilder b)]) =
      _$EnsembleRefitResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnsembleRefitResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnsembleRefitResult> get serializer =>
      _$EnsembleRefitResultSerializer();
}

class _$EnsembleRefitResultSerializer
    implements PrimitiveSerializer<EnsembleRefitResult> {
  @override
  final Iterable<Type> types = const [
    EnsembleRefitResult,
    _$EnsembleRefitResult
  ];

  @override
  final String wireName = r'EnsembleRefitResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnsembleRefitResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fittedAt';
    yield serializers.serialize(
      object.fittedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'extremizing';
    yield serializers.serialize(
      object.extremizing,
      specifiedType: const FullType(EnsembleRefitResultExtremizing),
    );
    yield r'platt';
    yield serializers.serialize(
      object.platt,
      specifiedType:
          const FullType(BuiltList, [FullType(EnsembleRefitResultPlattInner)]),
    );
    yield r'weights';
    yield serializers.serialize(
      object.weights,
      specifiedType: const FullType(
          BuiltList, [FullType(EnsembleRefitResultWeightsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EnsembleRefitResult object, {
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
    required EnsembleRefitResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fittedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.fittedAt = valueDes;
          break;
        case r'extremizing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EnsembleRefitResultExtremizing),
          ) as EnsembleRefitResultExtremizing;
          result.extremizing.replace(valueDes);
          break;
        case r'platt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(EnsembleRefitResultPlattInner)]),
          ) as BuiltList<EnsembleRefitResultPlattInner>;
          result.platt.replace(valueDes);
          break;
        case r'weights':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(EnsembleRefitResultWeightsInner)]),
          ) as BuiltList<EnsembleRefitResultWeightsInner>;
          result.weights.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EnsembleRefitResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnsembleRefitResultBuilder();
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
