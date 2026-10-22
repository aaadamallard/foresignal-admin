//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_suggestion_estimate_layers_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_suggestion_estimate.g.dart';

/// Projected storage of the draft
///
/// Properties:
/// * [totalRowsPerDay]
/// * [totalBytesPerDay]
/// * [layers]
@BuiltValue()
abstract class ChronicleSuggestionEstimate
    implements
        Built<ChronicleSuggestionEstimate, ChronicleSuggestionEstimateBuilder> {
  @BuiltValueField(wireName: r'totalRowsPerDay')
  num? get totalRowsPerDay;

  @BuiltValueField(wireName: r'totalBytesPerDay')
  num? get totalBytesPerDay;

  @BuiltValueField(wireName: r'layers')
  BuiltList<ChronicleSuggestionEstimateLayersInner>? get layers;

  ChronicleSuggestionEstimate._();

  factory ChronicleSuggestionEstimate(
          [void updates(ChronicleSuggestionEstimateBuilder b)]) =
      _$ChronicleSuggestionEstimate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSuggestionEstimateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSuggestionEstimate> get serializer =>
      _$ChronicleSuggestionEstimateSerializer();
}

class _$ChronicleSuggestionEstimateSerializer
    implements PrimitiveSerializer<ChronicleSuggestionEstimate> {
  @override
  final Iterable<Type> types = const [
    ChronicleSuggestionEstimate,
    _$ChronicleSuggestionEstimate
  ];

  @override
  final String wireName = r'ChronicleSuggestionEstimate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSuggestionEstimate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalRowsPerDay != null) {
      yield r'totalRowsPerDay';
      yield serializers.serialize(
        object.totalRowsPerDay,
        specifiedType: const FullType(num),
      );
    }
    if (object.totalBytesPerDay != null) {
      yield r'totalBytesPerDay';
      yield serializers.serialize(
        object.totalBytesPerDay,
        specifiedType: const FullType(num),
      );
    }
    if (object.layers != null) {
      yield r'layers';
      yield serializers.serialize(
        object.layers,
        specifiedType: const FullType(
            BuiltList, [FullType(ChronicleSuggestionEstimateLayersInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSuggestionEstimate object, {
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
    required ChronicleSuggestionEstimateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalRowsPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.totalRowsPerDay = valueDes;
          break;
        case r'totalBytesPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.totalBytesPerDay = valueDes;
          break;
        case r'layers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ChronicleSuggestionEstimateLayersInner)]),
          ) as BuiltList<ChronicleSuggestionEstimateLayersInner>?;
          if (valueDes == null) continue;
          result.layers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSuggestionEstimate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSuggestionEstimateBuilder();
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
