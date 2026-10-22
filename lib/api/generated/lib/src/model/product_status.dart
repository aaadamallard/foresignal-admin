//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/health_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_status.g.dart';

/// Current product health
///
/// Properties:
/// * [health]
/// * [stale] - Newest frame older than `maxGap`
/// * [lastFrameAt]
/// * [reason] - Health reason, e.g. a silent format change or a disabled decoder
@BuiltValue()
abstract class ProductStatus
    implements Built<ProductStatus, ProductStatusBuilder> {
  @BuiltValueField(wireName: r'health')
  HealthStatus get health;
  // enum healthEnum {  healthy,  degraded,  failing,  idle,  disabled,  };

  /// Newest frame older than `maxGap`
  @BuiltValueField(wireName: r'stale')
  bool get stale;

  @BuiltValueField(wireName: r'lastFrameAt')
  DateTime? get lastFrameAt;

  /// Health reason, e.g. a silent format change or a disabled decoder
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  ProductStatus._();

  factory ProductStatus([void updates(ProductStatusBuilder b)]) =
      _$ProductStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductStatus> get serializer =>
      _$ProductStatusSerializer();
}

class _$ProductStatusSerializer implements PrimitiveSerializer<ProductStatus> {
  @override
  final Iterable<Type> types = const [ProductStatus, _$ProductStatus];

  @override
  final String wireName = r'ProductStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'health';
    yield serializers.serialize(
      object.health,
      specifiedType: const FullType(HealthStatus),
    );
    yield r'stale';
    yield serializers.serialize(
      object.stale,
      specifiedType: const FullType(bool),
    );
    if (object.lastFrameAt != null) {
      yield r'lastFrameAt';
      yield serializers.serialize(
        object.lastFrameAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductStatus object, {
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
    required ProductStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'health':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(HealthStatus),
                  )
                  as HealthStatus;
          result.health = valueDes;
          break;
        case r'stale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.stale = valueDes;
          break;
        case r'lastFrameAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastFrameAt = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductStatusBuilder();
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
