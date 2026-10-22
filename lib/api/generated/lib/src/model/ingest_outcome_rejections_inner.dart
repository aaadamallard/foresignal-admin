//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_outcome_rejections_inner.g.dart';

/// IngestOutcomeRejectionsInner
///
/// Properties:
/// * [index]
/// * [externalId]
/// * [reason] - Rejection reason code (normalizer, prompt 008): EXTERNAL_ID_INVALID, UNKNOWN_KIND, MISSING_OBSERVED_AT, OBSERVED_AT_TOO_OLD, PAYLOAD_TOO_LARGE, PAYLOAD_TOO_DEEP, PAYLOAD_TOO_MANY_KEYS, PAYLOAD_STRING_TOO_LONG, PAYLOAD_NON_FINITE_NUMBER, PAYLOAD_UNSUPPORTED_TYPE, TOO_MANY_OBSERVERS, GEOMETRY_TOO_MANY_VERTICES, GEOMETRY_WRONG_SRID, COORDINATES_OUT_OF_RANGE, QUALITY_INVALID, VALID_RANGE_INVERTED. Format rejections (024, 039): INVALID_ITEM, LOW_ACCURACY (accuracy worse than maxAccuracyMeters), INVALID_FIX (valid=false, missing or out-of-range coordinates), NULL_ISLAND (exact 0,0), ENCRYPTED_UNSUPPORTED (OwnTracks payload encryption). Later prompts may add codes.
@BuiltValue()
abstract class IngestOutcomeRejectionsInner
    implements
        Built<
          IngestOutcomeRejectionsInner,
          IngestOutcomeRejectionsInnerBuilder
        > {
  @BuiltValueField(wireName: r'index')
  int? get index;

  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  /// Rejection reason code (normalizer, prompt 008): EXTERNAL_ID_INVALID, UNKNOWN_KIND, MISSING_OBSERVED_AT, OBSERVED_AT_TOO_OLD, PAYLOAD_TOO_LARGE, PAYLOAD_TOO_DEEP, PAYLOAD_TOO_MANY_KEYS, PAYLOAD_STRING_TOO_LONG, PAYLOAD_NON_FINITE_NUMBER, PAYLOAD_UNSUPPORTED_TYPE, TOO_MANY_OBSERVERS, GEOMETRY_TOO_MANY_VERTICES, GEOMETRY_WRONG_SRID, COORDINATES_OUT_OF_RANGE, QUALITY_INVALID, VALID_RANGE_INVERTED. Format rejections (024, 039): INVALID_ITEM, LOW_ACCURACY (accuracy worse than maxAccuracyMeters), INVALID_FIX (valid=false, missing or out-of-range coordinates), NULL_ISLAND (exact 0,0), ENCRYPTED_UNSUPPORTED (OwnTracks payload encryption). Later prompts may add codes.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  IngestOutcomeRejectionsInner._();

  factory IngestOutcomeRejectionsInner([
    void updates(IngestOutcomeRejectionsInnerBuilder b),
  ]) = _$IngestOutcomeRejectionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestOutcomeRejectionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestOutcomeRejectionsInner> get serializer =>
      _$IngestOutcomeRejectionsInnerSerializer();
}

class _$IngestOutcomeRejectionsInnerSerializer
    implements PrimitiveSerializer<IngestOutcomeRejectionsInner> {
  @override
  final Iterable<Type> types = const [
    IngestOutcomeRejectionsInner,
    _$IngestOutcomeRejectionsInner,
  ];

  @override
  final String wireName = r'IngestOutcomeRejectionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestOutcomeRejectionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.index != null) {
      yield r'index';
      yield serializers.serialize(
        object.index,
        specifiedType: const FullType(int),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    IngestOutcomeRejectionsInner object, {
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
    required IngestOutcomeRejectionsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.index = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.externalId = valueDes;
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
  IngestOutcomeRejectionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestOutcomeRejectionsInnerBuilder();
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
