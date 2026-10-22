//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_physical_evidence.g.dart';

/// Non-social evidence matching a claim's family, place and window
///
/// Properties:
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [family]
/// * [originator]
/// * [firstObservedAt]
/// * [distanceKm]
/// * [negates] - An agency or sensor record that explicitly negates the claim (e.g. normal service)
@BuiltValue()
abstract class SocialPhysicalEvidence
    implements Built<SocialPhysicalEvidence, SocialPhysicalEvidenceBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'family')
  String get family;

  @BuiltValueField(wireName: r'originator')
  String get originator;

  @BuiltValueField(wireName: r'firstObservedAt')
  DateTime get firstObservedAt;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  /// An agency or sensor record that explicitly negates the claim (e.g. normal service)
  @BuiltValueField(wireName: r'negates')
  bool? get negates;

  SocialPhysicalEvidence._();

  factory SocialPhysicalEvidence([
    void updates(SocialPhysicalEvidenceBuilder b),
  ]) = _$SocialPhysicalEvidence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPhysicalEvidenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPhysicalEvidence> get serializer =>
      _$SocialPhysicalEvidenceSerializer();
}

class _$SocialPhysicalEvidenceSerializer
    implements PrimitiveSerializer<SocialPhysicalEvidence> {
  @override
  final Iterable<Type> types = const [
    SocialPhysicalEvidence,
    _$SocialPhysicalEvidence,
  ];

  @override
  final String wireName = r'SocialPhysicalEvidence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPhysicalEvidence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(String),
    );
    yield r'originator';
    yield serializers.serialize(
      object.originator,
      specifiedType: const FullType(String),
    );
    yield r'firstObservedAt';
    yield serializers.serialize(
      object.firstObservedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.negates != null) {
      yield r'negates';
      yield serializers.serialize(
        object.negates,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPhysicalEvidence object, {
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
    required SocialPhysicalEvidenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.family = valueDes;
          break;
        case r'originator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.originator = valueDes;
          break;
        case r'firstObservedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.firstObservedAt = valueDes;
          break;
        case r'distanceKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        case r'negates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.negates = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPhysicalEvidence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPhysicalEvidenceBuilder();
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
