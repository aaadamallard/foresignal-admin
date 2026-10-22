//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_summary_gaps_inner.g.dart';

/// Capture gap
///
/// Properties:
/// * [from]
/// * [to]
/// * [reason]
@BuiltValue()
abstract class ChronicleSummaryGapsInner
    implements
        Built<ChronicleSummaryGapsInner, ChronicleSummaryGapsInnerBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  ChronicleSummaryGapsInner._();

  factory ChronicleSummaryGapsInner(
          [void updates(ChronicleSummaryGapsInnerBuilder b)]) =
      _$ChronicleSummaryGapsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSummaryGapsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSummaryGapsInner> get serializer =>
      _$ChronicleSummaryGapsInnerSerializer();
}

class _$ChronicleSummaryGapsInnerSerializer
    implements PrimitiveSerializer<ChronicleSummaryGapsInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleSummaryGapsInner,
    _$ChronicleSummaryGapsInner
  ];

  @override
  final String wireName = r'ChronicleSummaryGapsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSummaryGapsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(DateTime),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSummaryGapsInner object, {
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
    required ChronicleSummaryGapsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.to = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
  ChronicleSummaryGapsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSummaryGapsInnerBuilder();
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
