//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'index_fit_result_components_inner.g.dart';

/// Per-component fit
///
/// Properties:
/// * [key]
/// * [coefficient]
/// * [standardError]
/// * [pValue]
/// * [significant]
/// * [currentWeight]
/// * [proposedWeight]
@BuiltValue()
abstract class IndexFitResultComponentsInner
    implements
        Built<IndexFitResultComponentsInner,
            IndexFitResultComponentsInnerBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'coefficient')
  num get coefficient;

  @BuiltValueField(wireName: r'standardError')
  num? get standardError;

  @BuiltValueField(wireName: r'pValue')
  num? get pValue;

  @BuiltValueField(wireName: r'significant')
  bool? get significant;

  @BuiltValueField(wireName: r'currentWeight')
  num? get currentWeight;

  @BuiltValueField(wireName: r'proposedWeight')
  num get proposedWeight;

  IndexFitResultComponentsInner._();

  factory IndexFitResultComponentsInner(
          [void updates(IndexFitResultComponentsInnerBuilder b)]) =
      _$IndexFitResultComponentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexFitResultComponentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexFitResultComponentsInner> get serializer =>
      _$IndexFitResultComponentsInnerSerializer();
}

class _$IndexFitResultComponentsInnerSerializer
    implements PrimitiveSerializer<IndexFitResultComponentsInner> {
  @override
  final Iterable<Type> types = const [
    IndexFitResultComponentsInner,
    _$IndexFitResultComponentsInner
  ];

  @override
  final String wireName = r'IndexFitResultComponentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexFitResultComponentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'coefficient';
    yield serializers.serialize(
      object.coefficient,
      specifiedType: const FullType(num),
    );
    if (object.standardError != null) {
      yield r'standardError';
      yield serializers.serialize(
        object.standardError,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.pValue != null) {
      yield r'pValue';
      yield serializers.serialize(
        object.pValue,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.significant != null) {
      yield r'significant';
      yield serializers.serialize(
        object.significant,
        specifiedType: const FullType(bool),
      );
    }
    if (object.currentWeight != null) {
      yield r'currentWeight';
      yield serializers.serialize(
        object.currentWeight,
        specifiedType: const FullType(num),
      );
    }
    yield r'proposedWeight';
    yield serializers.serialize(
      object.proposedWeight,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexFitResultComponentsInner object, {
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
    required IndexFitResultComponentsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'coefficient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.coefficient = valueDes;
          break;
        case r'standardError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.standardError = valueDes;
          break;
        case r'pValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.pValue = valueDes;
          break;
        case r'significant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.significant = valueDes;
          break;
        case r'currentWeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.currentWeight = valueDes;
          break;
        case r'proposedWeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.proposedWeight = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexFitResultComponentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexFitResultComponentsInnerBuilder();
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
