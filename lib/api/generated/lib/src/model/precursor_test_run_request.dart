//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_test_run_request.g.dart';

/// Range for a precursor test job: from/to or fromSeq/toSeq
///
/// Properties:
/// * [from]
/// * [to]
/// * [fromSeq]
/// * [toSeq]
@BuiltValue()
abstract class PrecursorTestRunRequest
    implements Built<PrecursorTestRunRequest, PrecursorTestRunRequestBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  @BuiltValueField(wireName: r'fromSeq')
  int? get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int? get toSeq;

  PrecursorTestRunRequest._();

  factory PrecursorTestRunRequest([
    void updates(PrecursorTestRunRequestBuilder b),
  ]) = _$PrecursorTestRunRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorTestRunRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorTestRunRequest> get serializer =>
      _$PrecursorTestRunRequestSerializer();
}

class _$PrecursorTestRunRequestSerializer
    implements PrimitiveSerializer<PrecursorTestRunRequest> {
  @override
  final Iterable<Type> types = const [
    PrecursorTestRunRequest,
    _$PrecursorTestRunRequest,
  ];

  @override
  final String wireName = r'PrecursorTestRunRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorTestRunRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.fromSeq != null) {
      yield r'fromSeq';
      yield serializers.serialize(
        object.fromSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.toSeq != null) {
      yield r'toSeq';
      yield serializers.serialize(
        object.toSeq,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorTestRunRequest object, {
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
    required PrecursorTestRunRequestBuilder result,
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
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'fromSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.toSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorTestRunRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorTestRunRequestBuilder();
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
