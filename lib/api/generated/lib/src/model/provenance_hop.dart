//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'provenance_hop.g.dart';

/// One instance in a federation provenance chain (113)
///
/// Properties:
/// * [instanceId] - Install id of the instance (003)
/// * [sourceId]
/// * [externalId]
/// * [seq]
/// * [ingestedAt]
@BuiltValue()
abstract class ProvenanceHop
    implements Built<ProvenanceHop, ProvenanceHopBuilder> {
  /// Install id of the instance (003)
  @BuiltValueField(wireName: r'instanceId')
  String get instanceId;

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'seq')
  int get seq;

  @BuiltValueField(wireName: r'ingestedAt')
  DateTime get ingestedAt;

  ProvenanceHop._();

  factory ProvenanceHop([void updates(ProvenanceHopBuilder b)]) =
      _$ProvenanceHop;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProvenanceHopBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProvenanceHop> get serializer =>
      _$ProvenanceHopSerializer();
}

class _$ProvenanceHopSerializer implements PrimitiveSerializer<ProvenanceHop> {
  @override
  final Iterable<Type> types = const [ProvenanceHop, _$ProvenanceHop];

  @override
  final String wireName = r'ProvenanceHop';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProvenanceHop object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'instanceId';
    yield serializers.serialize(
      object.instanceId,
      specifiedType: const FullType(String),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'seq';
    yield serializers.serialize(object.seq, specifiedType: const FullType(int));
    yield r'ingestedAt';
    yield serializers.serialize(
      object.ingestedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProvenanceHop object, {
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
    required ProvenanceHopBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instanceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.instanceId = valueDes;
          break;
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'seq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.seq = valueDes;
          break;
        case r'ingestedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.ingestedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProvenanceHop deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvenanceHopBuilder();
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
