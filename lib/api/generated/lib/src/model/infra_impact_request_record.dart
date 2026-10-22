//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_impact_request_record.g.dart';

/// A record whose geometry (or 040 region polygon when it is a centroid) seeds the query
///
/// Properties:
/// * [sourceId]
/// * [externalId]
@BuiltValue()
abstract class InfraImpactRequestRecord
    implements
        Built<InfraImpactRequestRecord, InfraImpactRequestRecordBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  InfraImpactRequestRecord._();

  factory InfraImpactRequestRecord([
    void updates(InfraImpactRequestRecordBuilder b),
  ]) = _$InfraImpactRequestRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraImpactRequestRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraImpactRequestRecord> get serializer =>
      _$InfraImpactRequestRecordSerializer();
}

class _$InfraImpactRequestRecordSerializer
    implements PrimitiveSerializer<InfraImpactRequestRecord> {
  @override
  final Iterable<Type> types = const [
    InfraImpactRequestRecord,
    _$InfraImpactRequestRecord,
  ];

  @override
  final String wireName = r'InfraImpactRequestRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraImpactRequestRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraImpactRequestRecord object, {
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
    required InfraImpactRequestRecordBuilder result,
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
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraImpactRequestRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraImpactRequestRecordBuilder();
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
