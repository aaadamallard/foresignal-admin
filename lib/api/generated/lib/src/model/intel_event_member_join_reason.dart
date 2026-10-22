//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_member_join_reason.g.dart';

/// Why the member joined
///
/// Properties:
/// * [clause] - Recipe clause (seed, join index, contradiction)
/// * [distanceKm]
/// * [dtMinutes]
/// * [matchedKeys]
/// * [regionTag]
@BuiltValue()
abstract class IntelEventMemberJoinReason
    implements
        Built<IntelEventMemberJoinReason, IntelEventMemberJoinReasonBuilder> {
  /// Recipe clause (seed, join index, contradiction)
  @BuiltValueField(wireName: r'clause')
  String? get clause;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  @BuiltValueField(wireName: r'dtMinutes')
  num? get dtMinutes;

  @BuiltValueField(wireName: r'matchedKeys')
  BuiltList<String>? get matchedKeys;

  @BuiltValueField(wireName: r'regionTag')
  String? get regionTag;

  IntelEventMemberJoinReason._();

  factory IntelEventMemberJoinReason([
    void updates(IntelEventMemberJoinReasonBuilder b),
  ]) = _$IntelEventMemberJoinReason;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventMemberJoinReasonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventMemberJoinReason> get serializer =>
      _$IntelEventMemberJoinReasonSerializer();
}

class _$IntelEventMemberJoinReasonSerializer
    implements PrimitiveSerializer<IntelEventMemberJoinReason> {
  @override
  final Iterable<Type> types = const [
    IntelEventMemberJoinReason,
    _$IntelEventMemberJoinReason,
  ];

  @override
  final String wireName = r'IntelEventMemberJoinReason';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventMemberJoinReason object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.clause != null) {
      yield r'clause';
      yield serializers.serialize(
        object.clause,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.dtMinutes != null) {
      yield r'dtMinutes';
      yield serializers.serialize(
        object.dtMinutes,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.matchedKeys != null) {
      yield r'matchedKeys';
      yield serializers.serialize(
        object.matchedKeys,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.regionTag != null) {
      yield r'regionTag';
      yield serializers.serialize(
        object.regionTag,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelEventMemberJoinReason object, {
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
    required IntelEventMemberJoinReasonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'clause':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.clause = valueDes;
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
        case r'dtMinutes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.dtMinutes = valueDes;
          break;
        case r'matchedKeys':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.matchedKeys.replace(valueDes);
          break;
        case r'regionTag':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.regionTag = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelEventMemberJoinReason deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventMemberJoinReasonBuilder();
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
