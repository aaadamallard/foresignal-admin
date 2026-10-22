//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/cpa_batch_request_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cpa_batch_request.g.dart';

/// One subject against up to 500 records from a filter (114)
///
/// Properties:
/// * [subject] - `{sourceId}/{externalId}`
/// * [filter]
/// * [horizon] - CPA horizon. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
/// * [maxDcpaM]
/// * [top]
@BuiltValue()
abstract class CpaBatchRequest
    implements Built<CpaBatchRequest, CpaBatchRequestBuilder> {
  /// `{sourceId}/{externalId}`
  @BuiltValueField(wireName: r'subject')
  String get subject;

  @BuiltValueField(wireName: r'filter')
  CpaBatchRequestFilter get filter;

  /// CPA horizon. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
  @BuiltValueField(wireName: r'horizon')
  String? get horizon;

  @BuiltValueField(wireName: r'maxDcpaM')
  num? get maxDcpaM;

  @BuiltValueField(wireName: r'top')
  int? get top;

  CpaBatchRequest._();

  factory CpaBatchRequest([void updates(CpaBatchRequestBuilder b)]) =
      _$CpaBatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CpaBatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CpaBatchRequest> get serializer =>
      _$CpaBatchRequestSerializer();
}

class _$CpaBatchRequestSerializer
    implements PrimitiveSerializer<CpaBatchRequest> {
  @override
  final Iterable<Type> types = const [CpaBatchRequest, _$CpaBatchRequest];

  @override
  final String wireName = r'CpaBatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CpaBatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'subject';
    yield serializers.serialize(
      object.subject,
      specifiedType: const FullType(String),
    );
    yield r'filter';
    yield serializers.serialize(
      object.filter,
      specifiedType: const FullType(CpaBatchRequestFilter),
    );
    if (object.horizon != null) {
      yield r'horizon';
      yield serializers.serialize(
        object.horizon,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxDcpaM != null) {
      yield r'maxDcpaM';
      yield serializers.serialize(
        object.maxDcpaM,
        specifiedType: const FullType(num),
      );
    }
    if (object.top != null) {
      yield r'top';
      yield serializers.serialize(
        object.top,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CpaBatchRequest object, {
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
    required CpaBatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subject':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.subject = valueDes;
          break;
        case r'filter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CpaBatchRequestFilter),
                  )
                  as CpaBatchRequestFilter;
          result.filter.replace(valueDes);
          break;
        case r'horizon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.horizon = valueDes;
          break;
        case r'maxDcpaM':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxDcpaM = valueDes;
          break;
        case r'top':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.top = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CpaBatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CpaBatchRequestBuilder();
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
