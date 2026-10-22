//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_layer_estimate.g.dart';

/// Projected capture volume of one layer
///
/// Properties:
/// * [rowsPerDay]
/// * [bytesPerDay]
/// * [basis] - How the projection was computed, e.g. last 7 d of global history
@BuiltValue()
abstract class ChronicleLayerEstimate
    implements Built<ChronicleLayerEstimate, ChronicleLayerEstimateBuilder> {
  @BuiltValueField(wireName: r'rowsPerDay')
  num get rowsPerDay;

  @BuiltValueField(wireName: r'bytesPerDay')
  num get bytesPerDay;

  /// How the projection was computed, e.g. last 7 d of global history
  @BuiltValueField(wireName: r'basis')
  String? get basis;

  ChronicleLayerEstimate._();

  factory ChronicleLayerEstimate(
          [void updates(ChronicleLayerEstimateBuilder b)]) =
      _$ChronicleLayerEstimate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleLayerEstimateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleLayerEstimate> get serializer =>
      _$ChronicleLayerEstimateSerializer();
}

class _$ChronicleLayerEstimateSerializer
    implements PrimitiveSerializer<ChronicleLayerEstimate> {
  @override
  final Iterable<Type> types = const [
    ChronicleLayerEstimate,
    _$ChronicleLayerEstimate
  ];

  @override
  final String wireName = r'ChronicleLayerEstimate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleLayerEstimate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rowsPerDay';
    yield serializers.serialize(
      object.rowsPerDay,
      specifiedType: const FullType(num),
    );
    yield r'bytesPerDay';
    yield serializers.serialize(
      object.bytesPerDay,
      specifiedType: const FullType(num),
    );
    if (object.basis != null) {
      yield r'basis';
      yield serializers.serialize(
        object.basis,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleLayerEstimate object, {
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
    required ChronicleLayerEstimateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rowsPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rowsPerDay = valueDes;
          break;
        case r'bytesPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.bytesPerDay = valueDes;
          break;
        case r'basis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.basis = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleLayerEstimate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleLayerEstimateBuilder();
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
