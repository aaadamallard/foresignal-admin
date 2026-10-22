//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_evidence_member_counts.g.dart';

/// Member counts
///
/// Properties:
/// * [byType] - Count per member type
/// * [byFamily] - Count per signal family
@BuiltValue()
abstract class SituationEvidenceMemberCounts
    implements
        Built<SituationEvidenceMemberCounts,
            SituationEvidenceMemberCountsBuilder> {
  /// Count per member type
  @BuiltValueField(wireName: r'byType')
  BuiltMap<String, int>? get byType;

  /// Count per signal family
  @BuiltValueField(wireName: r'byFamily')
  BuiltMap<String, int>? get byFamily;

  SituationEvidenceMemberCounts._();

  factory SituationEvidenceMemberCounts(
          [void updates(SituationEvidenceMemberCountsBuilder b)]) =
      _$SituationEvidenceMemberCounts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationEvidenceMemberCountsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationEvidenceMemberCounts> get serializer =>
      _$SituationEvidenceMemberCountsSerializer();
}

class _$SituationEvidenceMemberCountsSerializer
    implements PrimitiveSerializer<SituationEvidenceMemberCounts> {
  @override
  final Iterable<Type> types = const [
    SituationEvidenceMemberCounts,
    _$SituationEvidenceMemberCounts
  ];

  @override
  final String wireName = r'SituationEvidenceMemberCounts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationEvidenceMemberCounts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.byType != null) {
      yield r'byType';
      yield serializers.serialize(
        object.byType,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.byFamily != null) {
      yield r'byFamily';
      yield serializers.serialize(
        object.byFamily,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationEvidenceMemberCounts object, {
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
    required SituationEvidenceMemberCountsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'byType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byType.replace(valueDes);
          break;
        case r'byFamily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byFamily.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationEvidenceMemberCounts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationEvidenceMemberCountsBuilder();
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
