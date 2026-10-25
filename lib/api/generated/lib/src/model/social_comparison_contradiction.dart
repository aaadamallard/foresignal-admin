//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_comparison_contradiction.g.dart';

/// Why the claim is contradicted
///
/// Properties:
/// * [reason]
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
@BuiltValue()
abstract class SocialComparisonContradiction
    implements
        Built<
          SocialComparisonContradiction,
          SocialComparisonContradictionBuilder
        > {
  @BuiltValueField(wireName: r'reason')
  SocialComparisonContradictionReasonEnum get reason;
  // enum reasonEnum {  negating-record,  media-reuse,  };

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  SocialComparisonContradiction._();

  factory SocialComparisonContradiction([
    void updates(SocialComparisonContradictionBuilder b),
  ]) = _$SocialComparisonContradiction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialComparisonContradictionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialComparisonContradiction> get serializer =>
      _$SocialComparisonContradictionSerializer();
}

class _$SocialComparisonContradictionSerializer
    implements PrimitiveSerializer<SocialComparisonContradiction> {
  @override
  final Iterable<Type> types = const [
    SocialComparisonContradiction,
    _$SocialComparisonContradiction,
  ];

  @override
  final String wireName = r'SocialComparisonContradiction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialComparisonContradiction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(SocialComparisonContradictionReasonEnum),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialComparisonContradiction object, {
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
    required SocialComparisonContradictionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SocialComparisonContradictionReasonEnum,
                    ),
                  )
                  as SocialComparisonContradictionReasonEnum;
          result.reason = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialComparisonContradiction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialComparisonContradictionBuilder();
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

class SocialComparisonContradictionReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'negating-record')
  static const SocialComparisonContradictionReasonEnum negatingRecord =
      _$socialComparisonContradictionReasonEnum_negatingRecord;
  @BuiltValueEnumConst(wireName: r'media-reuse')
  static const SocialComparisonContradictionReasonEnum mediaReuse =
      _$socialComparisonContradictionReasonEnum_mediaReuse;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialComparisonContradictionReasonEnum unknownDefaultOpenApi =
      _$socialComparisonContradictionReasonEnum_unknownDefaultOpenApi;

  static Serializer<SocialComparisonContradictionReasonEnum> get serializer =>
      _$socialComparisonContradictionReasonEnumSerializer;

  const SocialComparisonContradictionReasonEnum._(String name) : super(name);

  static BuiltSet<SocialComparisonContradictionReasonEnum> get values =>
      _$socialComparisonContradictionReasonEnumValues;
  static SocialComparisonContradictionReasonEnum valueOf(String name) =>
      _$socialComparisonContradictionReasonEnumValueOf(name);
}
