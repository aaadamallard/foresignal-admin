//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:foresignal_api/src/model/provenance.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment_bundle_objects_inner.g.dart';

/// Cited object
///
/// Properties:
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [envelope]
/// * [data] - Full object: finding, base rate, forecast with scores, hypothesis revision
/// * [provenance]
@BuiltValue()
abstract class AssessmentBundleObjectsInner
    implements
        Built<AssessmentBundleObjectsInner,
            AssessmentBundleObjectsInnerBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'envelope')
  ObjectEnvelope get envelope;

  /// Full object: finding, base rate, forecast with scores, hypothesis revision
  @BuiltValueField(wireName: r'data')
  BuiltMap<String, JsonObject?>? get data;

  @BuiltValueField(wireName: r'provenance')
  Provenance? get provenance;

  AssessmentBundleObjectsInner._();

  factory AssessmentBundleObjectsInner(
          [void updates(AssessmentBundleObjectsInnerBuilder b)]) =
      _$AssessmentBundleObjectsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentBundleObjectsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssessmentBundleObjectsInner> get serializer =>
      _$AssessmentBundleObjectsInnerSerializer();
}

class _$AssessmentBundleObjectsInnerSerializer
    implements PrimitiveSerializer<AssessmentBundleObjectsInner> {
  @override
  final Iterable<Type> types = const [
    AssessmentBundleObjectsInner,
    _$AssessmentBundleObjectsInner
  ];

  @override
  final String wireName = r'AssessmentBundleObjectsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssessmentBundleObjectsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'envelope';
    yield serializers.serialize(
      object.envelope,
      specifiedType: const FullType(ObjectEnvelope),
    );
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.provenance != null) {
      yield r'provenance';
      yield serializers.serialize(
        object.provenance,
        specifiedType: const FullType(Provenance),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssessmentBundleObjectsInner object, {
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
    required AssessmentBundleObjectsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'envelope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectEnvelope),
          ) as ObjectEnvelope;
          result.envelope.replace(valueDes);
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'provenance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Provenance),
          ) as Provenance?;
          if (valueDes == null) continue;
          result.provenance.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssessmentBundleObjectsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentBundleObjectsInnerBuilder();
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
