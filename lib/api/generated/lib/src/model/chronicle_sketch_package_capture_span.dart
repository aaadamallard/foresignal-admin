//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_sketch_package_capture_span.g.dart';

/// Capture span at ISO-week granularity
///
/// Properties:
/// * [from]
/// * [to]
@BuiltValue()
abstract class ChronicleSketchPackageCaptureSpan
    implements
        Built<
          ChronicleSketchPackageCaptureSpan,
          ChronicleSketchPackageCaptureSpanBuilder
        > {
  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'to')
  String? get to;

  ChronicleSketchPackageCaptureSpan._();

  factory ChronicleSketchPackageCaptureSpan([
    void updates(ChronicleSketchPackageCaptureSpanBuilder b),
  ]) = _$ChronicleSketchPackageCaptureSpan;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSketchPackageCaptureSpanBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSketchPackageCaptureSpan> get serializer =>
      _$ChronicleSketchPackageCaptureSpanSerializer();
}

class _$ChronicleSketchPackageCaptureSpanSerializer
    implements PrimitiveSerializer<ChronicleSketchPackageCaptureSpan> {
  @override
  final Iterable<Type> types = const [
    ChronicleSketchPackageCaptureSpan,
    _$ChronicleSketchPackageCaptureSpan,
  ];

  @override
  final String wireName = r'ChronicleSketchPackageCaptureSpan';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSketchPackageCaptureSpan object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSketchPackageCaptureSpan object, {
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
    required ChronicleSketchPackageCaptureSpanBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSketchPackageCaptureSpan deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSketchPackageCaptureSpanBuilder();
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
