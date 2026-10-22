//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cot_backfill_request.g.dart';

/// COT history backfill request (117)
///
/// Properties:
/// * [from] - Oldest report date to fetch
@BuiltValue()
abstract class CotBackfillRequest
    implements Built<CotBackfillRequest, CotBackfillRequestBuilder> {
  /// Oldest report date to fetch
  @BuiltValueField(wireName: r'from')
  Date? get from;

  CotBackfillRequest._();

  factory CotBackfillRequest([void updates(CotBackfillRequestBuilder b)]) =
      _$CotBackfillRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CotBackfillRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CotBackfillRequest> get serializer =>
      _$CotBackfillRequestSerializer();
}

class _$CotBackfillRequestSerializer
    implements PrimitiveSerializer<CotBackfillRequest> {
  @override
  final Iterable<Type> types = const [CotBackfillRequest, _$CotBackfillRequest];

  @override
  final String wireName = r'CotBackfillRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CotBackfillRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CotBackfillRequest object, {
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
    required CotBackfillRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
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
  CotBackfillRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CotBackfillRequestBuilder();
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
