//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/capture_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_estimate_layers_inner.g.dart';

/// Per-layer projection
///
/// Properties:
/// * [layerId] - ULID identifier
/// * [name]
/// * [capture]
/// * [rowsPerDay]
/// * [bytesPerDay]
/// * [basis]
@BuiltValue()
abstract class ChronicleEstimateLayersInner
    implements
        Built<ChronicleEstimateLayersInner,
            ChronicleEstimateLayersInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'layerId')
  String get layerId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'capture')
  CaptureMode? get capture;

  @BuiltValueField(wireName: r'rowsPerDay')
  num get rowsPerDay;

  @BuiltValueField(wireName: r'bytesPerDay')
  num get bytesPerDay;

  @BuiltValueField(wireName: r'basis')
  String? get basis;

  ChronicleEstimateLayersInner._();

  factory ChronicleEstimateLayersInner(
          [void updates(ChronicleEstimateLayersInnerBuilder b)]) =
      _$ChronicleEstimateLayersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleEstimateLayersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleEstimateLayersInner> get serializer =>
      _$ChronicleEstimateLayersInnerSerializer();
}

class _$ChronicleEstimateLayersInnerSerializer
    implements PrimitiveSerializer<ChronicleEstimateLayersInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleEstimateLayersInner,
    _$ChronicleEstimateLayersInner
  ];

  @override
  final String wireName = r'ChronicleEstimateLayersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleEstimateLayersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'layerId';
    yield serializers.serialize(
      object.layerId,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.capture != null) {
      yield r'capture';
      yield serializers.serialize(
        object.capture,
        specifiedType: const FullType(CaptureMode),
      );
    }
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
    ChronicleEstimateLayersInner object, {
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
    required ChronicleEstimateLayersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'layerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.layerId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'capture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CaptureMode),
          ) as CaptureMode?;
          if (valueDes == null) continue;
          result.capture.replace(valueDes);
          break;
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
  ChronicleEstimateLayersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleEstimateLayersInnerBuilder();
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
