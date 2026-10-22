//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_active.g.dart';

/// Entities observed in the period (from record_live, including touch-only activity) (029)
///
/// Properties:
/// * [sourceId]
/// * [kind]
/// * [entities]
/// * [previous] - The previous period's count; null (record_live keeps only the latest receipt, so it is not known until 038's rollups)
@BuiltValue()
abstract class DigestActive
    implements Built<DigestActive, DigestActiveBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'entities')
  int get entities;

  /// The previous period's count; null (record_live keeps only the latest receipt, so it is not known until 038's rollups)
  @BuiltValueField(wireName: r'previous')
  int? get previous;

  DigestActive._();

  factory DigestActive([void updates(DigestActiveBuilder b)]) = _$DigestActive;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestActiveBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestActive> get serializer => _$DigestActiveSerializer();
}

class _$DigestActiveSerializer implements PrimitiveSerializer<DigestActive> {
  @override
  final Iterable<Type> types = const [DigestActive, _$DigestActive];

  @override
  final String wireName = r'DigestActive';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestActive object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'entities';
    yield serializers.serialize(
      object.entities,
      specifiedType: const FullType(int),
    );
    if (object.previous != null) {
      yield r'previous';
      yield serializers.serialize(
        object.previous,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DigestActive object, {
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
    required DigestActiveBuilder result,
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
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.kind = valueDes;
          break;
        case r'entities':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.entities = valueDes;
          break;
        case r'previous':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.previous = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigestActive deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestActiveBuilder();
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
