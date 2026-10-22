//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ingest_outcome.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edp_item_rejection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_ingest_result.g.dart';

/// Result of a push
///
/// Properties:
/// * [accepted]
/// * [rejected]
/// * [outcome]
@BuiltValue()
abstract class EdpIngestResult
    implements Built<EdpIngestResult, EdpIngestResultBuilder> {
  @BuiltValueField(wireName: r'accepted')
  int get accepted;

  @BuiltValueField(wireName: r'rejected')
  BuiltList<EdpItemRejection> get rejected;

  @BuiltValueField(wireName: r'outcome')
  IngestOutcome? get outcome;

  EdpIngestResult._();

  factory EdpIngestResult([void updates(EdpIngestResultBuilder b)]) =
      _$EdpIngestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpIngestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpIngestResult> get serializer =>
      _$EdpIngestResultSerializer();
}

class _$EdpIngestResultSerializer
    implements PrimitiveSerializer<EdpIngestResult> {
  @override
  final Iterable<Type> types = const [EdpIngestResult, _$EdpIngestResult];

  @override
  final String wireName = r'EdpIngestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpIngestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accepted';
    yield serializers.serialize(
      object.accepted,
      specifiedType: const FullType(int),
    );
    yield r'rejected';
    yield serializers.serialize(
      object.rejected,
      specifiedType: const FullType(BuiltList, [FullType(EdpItemRejection)]),
    );
    if (object.outcome != null) {
      yield r'outcome';
      yield serializers.serialize(
        object.outcome,
        specifiedType: const FullType(IngestOutcome),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpIngestResult object, {
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
    required EdpIngestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accepted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accepted = valueDes;
          break;
        case r'rejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(EdpItemRejection)]),
          ) as BuiltList<EdpItemRejection>;
          result.rejected.replace(valueDes);
          break;
        case r'outcome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IngestOutcome),
          ) as IngestOutcome?;
          if (valueDes == null) continue;
          result.outcome.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpIngestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpIngestResultBuilder();
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
