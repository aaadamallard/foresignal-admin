//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_temporal_runs_inner.g.dart';

/// Forecast run summary
///
/// Properties:
/// * [run] - Run reference time (ISO-8601), usable as `run=`
/// * [status]
/// * [steps] - Forecast steps (hours) present
/// * [validFrom]
/// * [validTo]
@BuiltValue()
abstract class ProductTemporalRunsInner
    implements
        Built<ProductTemporalRunsInner, ProductTemporalRunsInnerBuilder> {
  /// Run reference time (ISO-8601), usable as `run=`
  @BuiltValueField(wireName: r'run')
  String get run;

  @BuiltValueField(wireName: r'status')
  ProductTemporalRunsInnerStatusEnum get status;
  // enum statusEnum {  complete,  partial,  };

  /// Forecast steps (hours) present
  @BuiltValueField(wireName: r'steps')
  BuiltList<int>? get steps;

  @BuiltValueField(wireName: r'validFrom')
  DateTime? get validFrom;

  @BuiltValueField(wireName: r'validTo')
  DateTime? get validTo;

  ProductTemporalRunsInner._();

  factory ProductTemporalRunsInner([
    void updates(ProductTemporalRunsInnerBuilder b),
  ]) = _$ProductTemporalRunsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductTemporalRunsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductTemporalRunsInner> get serializer =>
      _$ProductTemporalRunsInnerSerializer();
}

class _$ProductTemporalRunsInnerSerializer
    implements PrimitiveSerializer<ProductTemporalRunsInner> {
  @override
  final Iterable<Type> types = const [
    ProductTemporalRunsInner,
    _$ProductTemporalRunsInner,
  ];

  @override
  final String wireName = r'ProductTemporalRunsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductTemporalRunsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'run';
    yield serializers.serialize(
      object.run,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ProductTemporalRunsInnerStatusEnum),
    );
    if (object.steps != null) {
      yield r'steps';
      yield serializers.serialize(
        object.steps,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.validFrom != null) {
      yield r'validFrom';
      yield serializers.serialize(
        object.validFrom,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.validTo != null) {
      yield r'validTo';
      yield serializers.serialize(
        object.validTo,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductTemporalRunsInner object, {
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
    required ProductTemporalRunsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'run':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.run = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ProductTemporalRunsInnerStatusEnum,
                    ),
                  )
                  as ProductTemporalRunsInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'steps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(int),
                    ]),
                  )
                  as BuiltList<int>?;
          if (valueDes == null) continue;
          result.steps.replace(valueDes);
          break;
        case r'validFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validFrom = valueDes;
          break;
        case r'validTo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validTo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductTemporalRunsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductTemporalRunsInnerBuilder();
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

class ProductTemporalRunsInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'complete')
  static const ProductTemporalRunsInnerStatusEnum complete =
      _$productTemporalRunsInnerStatusEnum_complete;
  @BuiltValueEnumConst(wireName: r'partial')
  static const ProductTemporalRunsInnerStatusEnum partial =
      _$productTemporalRunsInnerStatusEnum_partial;

  static Serializer<ProductTemporalRunsInnerStatusEnum> get serializer =>
      _$productTemporalRunsInnerStatusEnumSerializer;

  const ProductTemporalRunsInnerStatusEnum._(String name) : super(name);

  static BuiltSet<ProductTemporalRunsInnerStatusEnum> get values =>
      _$productTemporalRunsInnerStatusEnumValues;
  static ProductTemporalRunsInnerStatusEnum valueOf(String name) =>
      _$productTemporalRunsInnerStatusEnumValueOf(name);
}
