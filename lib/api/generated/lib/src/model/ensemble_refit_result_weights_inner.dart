//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ensemble_refit_result_weights_inner.g.dart';

/// Ensemble weight per forecaster and category
///
/// Properties:
/// * [forecasterId]
/// * [category]
/// * [weight]
/// * [n]
@BuiltValue()
abstract class EnsembleRefitResultWeightsInner
    implements
        Built<
          EnsembleRefitResultWeightsInner,
          EnsembleRefitResultWeightsInnerBuilder
        > {
  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  @BuiltValueField(wireName: r'category')
  String get category;

  @BuiltValueField(wireName: r'weight')
  num get weight;

  @BuiltValueField(wireName: r'n')
  int? get n;

  EnsembleRefitResultWeightsInner._();

  factory EnsembleRefitResultWeightsInner([
    void updates(EnsembleRefitResultWeightsInnerBuilder b),
  ]) = _$EnsembleRefitResultWeightsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnsembleRefitResultWeightsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnsembleRefitResultWeightsInner> get serializer =>
      _$EnsembleRefitResultWeightsInnerSerializer();
}

class _$EnsembleRefitResultWeightsInnerSerializer
    implements PrimitiveSerializer<EnsembleRefitResultWeightsInner> {
  @override
  final Iterable<Type> types = const [
    EnsembleRefitResultWeightsInner,
    _$EnsembleRefitResultWeightsInner,
  ];

  @override
  final String wireName = r'EnsembleRefitResultWeightsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnsembleRefitResultWeightsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'forecasterId';
    yield serializers.serialize(
      object.forecasterId,
      specifiedType: const FullType(String),
    );
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(String),
    );
    yield r'weight';
    yield serializers.serialize(
      object.weight,
      specifiedType: const FullType(num),
    );
    if (object.n != null) {
      yield r'n';
      yield serializers.serialize(object.n, specifiedType: const FullType(int));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EnsembleRefitResultWeightsInner object, {
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
    required EnsembleRefitResultWeightsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forecasterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.forecasterId = valueDes;
          break;
        case r'category':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.category = valueDes;
          break;
        case r'weight':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.weight = valueDes;
          break;
        case r'n':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.n = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EnsembleRefitResultWeightsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnsembleRefitResultWeightsInnerBuilder();
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
