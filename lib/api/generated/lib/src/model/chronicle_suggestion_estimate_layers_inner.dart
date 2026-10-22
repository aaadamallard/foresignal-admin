//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_suggestion_estimate_layers_inner.g.dart';

/// Per-layer projection
///
/// Properties:
/// * [name]
/// * [rowsPerDay]
/// * [bytesPerDay]
@BuiltValue()
abstract class ChronicleSuggestionEstimateLayersInner
    implements
        Built<
          ChronicleSuggestionEstimateLayersInner,
          ChronicleSuggestionEstimateLayersInnerBuilder
        > {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'rowsPerDay')
  num? get rowsPerDay;

  @BuiltValueField(wireName: r'bytesPerDay')
  num? get bytesPerDay;

  ChronicleSuggestionEstimateLayersInner._();

  factory ChronicleSuggestionEstimateLayersInner([
    void updates(ChronicleSuggestionEstimateLayersInnerBuilder b),
  ]) = _$ChronicleSuggestionEstimateLayersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSuggestionEstimateLayersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSuggestionEstimateLayersInner> get serializer =>
      _$ChronicleSuggestionEstimateLayersInnerSerializer();
}

class _$ChronicleSuggestionEstimateLayersInnerSerializer
    implements PrimitiveSerializer<ChronicleSuggestionEstimateLayersInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleSuggestionEstimateLayersInner,
    _$ChronicleSuggestionEstimateLayersInner,
  ];

  @override
  final String wireName = r'ChronicleSuggestionEstimateLayersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSuggestionEstimateLayersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.rowsPerDay != null) {
      yield r'rowsPerDay';
      yield serializers.serialize(
        object.rowsPerDay,
        specifiedType: const FullType(num),
      );
    }
    if (object.bytesPerDay != null) {
      yield r'bytesPerDay';
      yield serializers.serialize(
        object.bytesPerDay,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSuggestionEstimateLayersInner object, {
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
    required ChronicleSuggestionEstimateLayersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'rowsPerDay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.rowsPerDay = valueDes;
          break;
        case r'bytesPerDay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.bytesPerDay = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSuggestionEstimateLayersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSuggestionEstimateLayersInnerBuilder();
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
