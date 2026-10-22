//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/normalized_record_preview.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/probe_result_requests_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'probe_result.g.dart';

/// ProbeResult
///
/// Properties:
/// * [sourceId]
/// * [requests]
/// * [records]
/// * [parseError]
@BuiltValue()
abstract class ProbeResult implements Built<ProbeResult, ProbeResultBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'requests')
  BuiltList<ProbeResultRequestsInner> get requests;

  @BuiltValueField(wireName: r'records')
  BuiltList<NormalizedRecordPreview> get records;

  @BuiltValueField(wireName: r'parseError')
  String? get parseError;

  ProbeResult._();

  factory ProbeResult([void updates(ProbeResultBuilder b)]) = _$ProbeResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProbeResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProbeResult> get serializer => _$ProbeResultSerializer();
}

class _$ProbeResultSerializer implements PrimitiveSerializer<ProbeResult> {
  @override
  final Iterable<Type> types = const [ProbeResult, _$ProbeResult];

  @override
  final String wireName = r'ProbeResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProbeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'requests';
    yield serializers.serialize(
      object.requests,
      specifiedType: const FullType(BuiltList, [
        FullType(ProbeResultRequestsInner),
      ]),
    );
    yield r'records';
    yield serializers.serialize(
      object.records,
      specifiedType: const FullType(BuiltList, [
        FullType(NormalizedRecordPreview),
      ]),
    );
    if (object.parseError != null) {
      yield r'parseError';
      yield serializers.serialize(
        object.parseError,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProbeResult object, {
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
    required ProbeResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'requests':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ProbeResultRequestsInner),
                    ]),
                  )
                  as BuiltList<ProbeResultRequestsInner>;
          result.requests.replace(valueDes);
          break;
        case r'records':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(NormalizedRecordPreview),
                    ]),
                  )
                  as BuiltList<NormalizedRecordPreview>;
          result.records.replace(valueDes);
          break;
        case r'parseError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.parseError = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProbeResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProbeResultBuilder();
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
