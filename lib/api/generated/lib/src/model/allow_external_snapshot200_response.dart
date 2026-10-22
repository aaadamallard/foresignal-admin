//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ingest_outcome.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'allow_external_snapshot200_response.g.dart';

/// AllowExternalSnapshot200Response
///
/// Properties:
/// * [snapshotId]
/// * [removed] - Absence tombstones ingested
/// * [outcome]
@BuiltValue()
abstract class AllowExternalSnapshot200Response
    implements
        Built<AllowExternalSnapshot200Response,
            AllowExternalSnapshot200ResponseBuilder> {
  @BuiltValueField(wireName: r'snapshotId')
  String get snapshotId;

  /// Absence tombstones ingested
  @BuiltValueField(wireName: r'removed')
  int get removed;

  @BuiltValueField(wireName: r'outcome')
  IngestOutcome get outcome;

  AllowExternalSnapshot200Response._();

  factory AllowExternalSnapshot200Response(
          [void updates(AllowExternalSnapshot200ResponseBuilder b)]) =
      _$AllowExternalSnapshot200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AllowExternalSnapshot200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AllowExternalSnapshot200Response> get serializer =>
      _$AllowExternalSnapshot200ResponseSerializer();
}

class _$AllowExternalSnapshot200ResponseSerializer
    implements PrimitiveSerializer<AllowExternalSnapshot200Response> {
  @override
  final Iterable<Type> types = const [
    AllowExternalSnapshot200Response,
    _$AllowExternalSnapshot200Response
  ];

  @override
  final String wireName = r'AllowExternalSnapshot200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AllowExternalSnapshot200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'snapshotId';
    yield serializers.serialize(
      object.snapshotId,
      specifiedType: const FullType(String),
    );
    yield r'removed';
    yield serializers.serialize(
      object.removed,
      specifiedType: const FullType(int),
    );
    yield r'outcome';
    yield serializers.serialize(
      object.outcome,
      specifiedType: const FullType(IngestOutcome),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AllowExternalSnapshot200Response object, {
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
    required AllowExternalSnapshot200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'snapshotId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.snapshotId = valueDes;
          break;
        case r'removed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.removed = valueDes;
          break;
        case r'outcome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IngestOutcome),
          ) as IngestOutcome;
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
  AllowExternalSnapshot200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllowExternalSnapshot200ResponseBuilder();
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
