//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_thread_item_gap.g.dart';

/// Capture gap interval
///
/// Properties:
/// * [from]
/// * [to]
/// * [reason]
@BuiltValue()
abstract class ChronicleThreadItemGap
    implements Built<ChronicleThreadItemGap, ChronicleThreadItemGapBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  ChronicleThreadItemGap._();

  factory ChronicleThreadItemGap([
    void updates(ChronicleThreadItemGapBuilder b),
  ]) = _$ChronicleThreadItemGap;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleThreadItemGapBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleThreadItemGap> get serializer =>
      _$ChronicleThreadItemGapSerializer();
}

class _$ChronicleThreadItemGapSerializer
    implements PrimitiveSerializer<ChronicleThreadItemGap> {
  @override
  final Iterable<Type> types = const [
    ChronicleThreadItemGap,
    _$ChronicleThreadItemGap,
  ];

  @override
  final String wireName = r'ChronicleThreadItemGap';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleThreadItemGap object, {
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
    ChronicleThreadItemGap object, {
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
    required ChronicleThreadItemGapBuilder result,
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
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.to = valueDes;
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
  ChronicleThreadItemGap deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleThreadItemGapBuilder();
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
