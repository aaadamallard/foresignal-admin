//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_activate_request_backfill.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_activate_request.g.dart';

/// Activation options
///
/// Properties:
/// * [backfill]
@BuiltValue()
abstract class ChronicleActivateRequest
    implements
        Built<ChronicleActivateRequest, ChronicleActivateRequestBuilder> {
  @BuiltValueField(wireName: r'backfill')
  ChronicleActivateRequestBackfill? get backfill;

  ChronicleActivateRequest._();

  factory ChronicleActivateRequest(
          [void updates(ChronicleActivateRequestBuilder b)]) =
      _$ChronicleActivateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleActivateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleActivateRequest> get serializer =>
      _$ChronicleActivateRequestSerializer();
}

class _$ChronicleActivateRequestSerializer
    implements PrimitiveSerializer<ChronicleActivateRequest> {
  @override
  final Iterable<Type> types = const [
    ChronicleActivateRequest,
    _$ChronicleActivateRequest
  ];

  @override
  final String wireName = r'ChronicleActivateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleActivateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.backfill != null) {
      yield r'backfill';
      yield serializers.serialize(
        object.backfill,
        specifiedType:
            const FullType.nullable(ChronicleActivateRequestBackfill),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleActivateRequest object, {
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
    required ChronicleActivateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'backfill':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(ChronicleActivateRequestBackfill),
          ) as ChronicleActivateRequestBackfill?;
          if (valueDes == null) continue;
          result.backfill.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleActivateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleActivateRequestBuilder();
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
