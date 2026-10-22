//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'derived_evidence_ref.g.dart';

/// A sample input observation behind a derived record
///
/// Properties:
/// * [sourceId]
/// * [externalId]
/// * [observedAt]
@BuiltValue()
abstract class DerivedEvidenceRef
    implements Built<DerivedEvidenceRef, DerivedEvidenceRefBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  DerivedEvidenceRef._();

  factory DerivedEvidenceRef([void updates(DerivedEvidenceRefBuilder b)]) =
      _$DerivedEvidenceRef;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DerivedEvidenceRefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DerivedEvidenceRef> get serializer =>
      _$DerivedEvidenceRefSerializer();
}

class _$DerivedEvidenceRefSerializer
    implements PrimitiveSerializer<DerivedEvidenceRef> {
  @override
  final Iterable<Type> types = const [DerivedEvidenceRef, _$DerivedEvidenceRef];

  @override
  final String wireName = r'DerivedEvidenceRef';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DerivedEvidenceRef object, {
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
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DerivedEvidenceRef object, {
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
    required DerivedEvidenceRefBuilder result,
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
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.observedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DerivedEvidenceRef deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DerivedEvidenceRefBuilder();
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
