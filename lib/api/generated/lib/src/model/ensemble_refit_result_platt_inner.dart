//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ensemble_refit_result_platt_inner.g.dart';

/// Platt fit per forecaster and category (≥ 50 resolved)
///
/// Properties:
/// * [forecasterId]
/// * [category]
/// * [a]
/// * [b]
/// * [n]
@BuiltValue()
abstract class EnsembleRefitResultPlattInner
    implements
        Built<EnsembleRefitResultPlattInner,
            EnsembleRefitResultPlattInnerBuilder> {
  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  @BuiltValueField(wireName: r'category')
  String get category;

  @BuiltValueField(wireName: r'a')
  num get a;

  @BuiltValueField(wireName: r'b')
  num get b;

  @BuiltValueField(wireName: r'n')
  int get n;

  EnsembleRefitResultPlattInner._();

  factory EnsembleRefitResultPlattInner(
          [void updates(EnsembleRefitResultPlattInnerBuilder b)]) =
      _$EnsembleRefitResultPlattInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnsembleRefitResultPlattInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnsembleRefitResultPlattInner> get serializer =>
      _$EnsembleRefitResultPlattInnerSerializer();
}

class _$EnsembleRefitResultPlattInnerSerializer
    implements PrimitiveSerializer<EnsembleRefitResultPlattInner> {
  @override
  final Iterable<Type> types = const [
    EnsembleRefitResultPlattInner,
    _$EnsembleRefitResultPlattInner
  ];

  @override
  final String wireName = r'EnsembleRefitResultPlattInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnsembleRefitResultPlattInner object, {
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
    yield r'a';
    yield serializers.serialize(
      object.a,
      specifiedType: const FullType(num),
    );
    yield r'b';
    yield serializers.serialize(
      object.b,
      specifiedType: const FullType(num),
    );
    yield r'n';
    yield serializers.serialize(
      object.n,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EnsembleRefitResultPlattInner object, {
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
    required EnsembleRefitResultPlattInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forecasterId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.forecasterId = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'a':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.a = valueDes;
          break;
        case r'b':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.b = valueDes;
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  EnsembleRefitResultPlattInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnsembleRefitResultPlattInnerBuilder();
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
