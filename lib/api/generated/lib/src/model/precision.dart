//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/precision_components_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precision.g.dart';

/// Share confirmed among verdicts, per component, with Wilson intervals
///
/// Properties:
/// * [since]
/// * [generatedAt]
/// * [components]
@BuiltValue()
abstract class Precision implements Built<Precision, PrecisionBuilder> {
  @BuiltValueField(wireName: r'since')
  DateTime? get since;

  @BuiltValueField(wireName: r'generatedAt')
  DateTime get generatedAt;

  @BuiltValueField(wireName: r'components')
  BuiltList<PrecisionComponentsInner> get components;

  Precision._();

  factory Precision([void updates(PrecisionBuilder b)]) = _$Precision;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecisionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Precision> get serializer => _$PrecisionSerializer();
}

class _$PrecisionSerializer implements PrimitiveSerializer<Precision> {
  @override
  final Iterable<Type> types = const [Precision, _$Precision];

  @override
  final String wireName = r'Precision';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Precision object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.since != null) {
      yield r'since';
      yield serializers.serialize(
        object.since,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'generatedAt';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'components';
    yield serializers.serialize(
      object.components,
      specifiedType:
          const FullType(BuiltList, [FullType(PrecisionComponentsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Precision object, {
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
    required PrecisionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'since':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.since = valueDes;
          break;
        case r'generatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.generatedAt = valueDes;
          break;
        case r'components':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(PrecisionComponentsInner)]),
          ) as BuiltList<PrecisionComponentsInner>;
          result.components.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Precision deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecisionBuilder();
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
