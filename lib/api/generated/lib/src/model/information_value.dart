//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/information_value_indicators_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'information_value.g.dart';

/// Pending indicators ranked by expected information gain (`InformationValue` 1.0.0)
///
/// Properties:
/// * [setId] - ULID identifier
/// * [computedAt]
/// * [entropy] - H(P) of the set's current distribution (nats)
/// * [version]
/// * [indicators]
@BuiltValue()
abstract class InformationValue
    implements Built<InformationValue, InformationValueBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  /// H(P) of the set's current distribution (nats)
  @BuiltValueField(wireName: r'entropy')
  num get entropy;

  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'indicators')
  BuiltList<InformationValueIndicatorsInner> get indicators;

  InformationValue._();

  factory InformationValue([void updates(InformationValueBuilder b)]) =
      _$InformationValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InformationValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InformationValue> get serializer =>
      _$InformationValueSerializer();
}

class _$InformationValueSerializer
    implements PrimitiveSerializer<InformationValue> {
  @override
  final Iterable<Type> types = const [InformationValue, _$InformationValue];

  @override
  final String wireName = r'InformationValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InformationValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'entropy';
    yield serializers.serialize(
      object.entropy,
      specifiedType: const FullType(num),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    yield r'indicators';
    yield serializers.serialize(
      object.indicators,
      specifiedType: const FullType(
          BuiltList, [FullType(InformationValueIndicatorsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InformationValue object, {
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
    required InformationValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'setId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.setId = valueDes;
          break;
        case r'computedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.computedAt = valueDes;
          break;
        case r'entropy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.entropy = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'indicators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(InformationValueIndicatorsInner)]),
          ) as BuiltList<InformationValueIndicatorsInner>;
          result.indicators.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InformationValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InformationValueBuilder();
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
