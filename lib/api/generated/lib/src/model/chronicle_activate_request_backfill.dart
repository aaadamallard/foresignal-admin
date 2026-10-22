//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_activate_request_backfill.g.dart';

/// Copy matching history still retained globally, marked `backfilled`
///
/// Properties:
/// * [from]
@BuiltValue()
abstract class ChronicleActivateRequestBackfill
    implements
        Built<ChronicleActivateRequestBackfill,
            ChronicleActivateRequestBackfillBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime get from;

  ChronicleActivateRequestBackfill._();

  factory ChronicleActivateRequestBackfill(
          [void updates(ChronicleActivateRequestBackfillBuilder b)]) =
      _$ChronicleActivateRequestBackfill;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleActivateRequestBackfillBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleActivateRequestBackfill> get serializer =>
      _$ChronicleActivateRequestBackfillSerializer();
}

class _$ChronicleActivateRequestBackfillSerializer
    implements PrimitiveSerializer<ChronicleActivateRequestBackfill> {
  @override
  final Iterable<Type> types = const [
    ChronicleActivateRequestBackfill,
    _$ChronicleActivateRequestBackfill
  ];

  @override
  final String wireName = r'ChronicleActivateRequestBackfill';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleActivateRequestBackfill object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleActivateRequestBackfill object, {
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
    required ChronicleActivateRequestBackfillBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleActivateRequestBackfill deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleActivateRequestBackfillBuilder();
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
