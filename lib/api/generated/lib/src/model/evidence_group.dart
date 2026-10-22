//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'evidence_group.g.dart';

/// Observations of one canonical event that trace to one originator; only groups count as independent (116)
///
/// Properties:
/// * [id] - ULID identifier
/// * [canonicalEventId] - ULID identifier
/// * [originatorRoot]
/// * [memberCount]
/// * [firstSeq]
@BuiltValue()
abstract class EvidenceGroup
    implements Built<EvidenceGroup, EvidenceGroupBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'canonicalEventId')
  String get canonicalEventId;

  @BuiltValueField(wireName: r'originatorRoot')
  String get originatorRoot;

  @BuiltValueField(wireName: r'memberCount')
  int get memberCount;

  @BuiltValueField(wireName: r'firstSeq')
  int get firstSeq;

  EvidenceGroup._();

  factory EvidenceGroup([void updates(EvidenceGroupBuilder b)]) =
      _$EvidenceGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EvidenceGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EvidenceGroup> get serializer =>
      _$EvidenceGroupSerializer();
}

class _$EvidenceGroupSerializer implements PrimitiveSerializer<EvidenceGroup> {
  @override
  final Iterable<Type> types = const [EvidenceGroup, _$EvidenceGroup];

  @override
  final String wireName = r'EvidenceGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EvidenceGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'canonicalEventId';
    yield serializers.serialize(
      object.canonicalEventId,
      specifiedType: const FullType(String),
    );
    yield r'originatorRoot';
    yield serializers.serialize(
      object.originatorRoot,
      specifiedType: const FullType(String),
    );
    yield r'memberCount';
    yield serializers.serialize(
      object.memberCount,
      specifiedType: const FullType(int),
    );
    yield r'firstSeq';
    yield serializers.serialize(
      object.firstSeq,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EvidenceGroup object, {
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
    required EvidenceGroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'canonicalEventId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.canonicalEventId = valueDes;
          break;
        case r'originatorRoot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.originatorRoot = valueDes;
          break;
        case r'memberCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.memberCount = valueDes;
          break;
        case r'firstSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.firstSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EvidenceGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvidenceGroupBuilder();
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
