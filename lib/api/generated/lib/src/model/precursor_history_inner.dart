//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_history_inner.g.dart';

/// PrecursorHistoryInner
///
/// Properties:
/// * [at]
/// * [by]
/// * [from]
/// * [to]
/// * [reason]
@BuiltValue()
abstract class PrecursorHistoryInner
    implements Built<PrecursorHistoryInner, PrecursorHistoryInnerBuilder> {
  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'by')
  String get by;

  @BuiltValueField(wireName: r'from')
  String? get from;

  @BuiltValueField(wireName: r'to')
  String get to;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  PrecursorHistoryInner._();

  factory PrecursorHistoryInner([
    void updates(PrecursorHistoryInnerBuilder b),
  ]) = _$PrecursorHistoryInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorHistoryInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorHistoryInner> get serializer =>
      _$PrecursorHistoryInnerSerializer();
}

class _$PrecursorHistoryInnerSerializer
    implements PrimitiveSerializer<PrecursorHistoryInner> {
  @override
  final Iterable<Type> types = const [
    PrecursorHistoryInner,
    _$PrecursorHistoryInner,
  ];

  @override
  final String wireName = r'PrecursorHistoryInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorHistoryInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'by';
    yield serializers.serialize(
      object.by,
      specifiedType: const FullType(String),
    );
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
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
    PrecursorHistoryInner object, {
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
    required PrecursorHistoryInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'by':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.by = valueDes;
          break;
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
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
  PrecursorHistoryInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorHistoryInnerBuilder();
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
