//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claim_reputation.g.dart';

/// The reputation of a rated outlet as it bears on a social claim: its factuality grade, partisan lean and state-affiliation, mirroring how news reliability is graded. Present only when the claim's source resolves to a rated outlet (153)
///
/// Properties:
/// * [outletId] - The rated outlet the source resolved to
/// * [factuality] - The outlet's factuality grade (A best, F worst)
/// * [lean] - Consensus partisan lean bucket (e.g. left / center / right), or null when unrated
/// * [stateAffiliated] - Whether the outlet is state media
@BuiltValue()
abstract class ClaimReputation
    implements Built<ClaimReputation, ClaimReputationBuilder> {
  /// The rated outlet the source resolved to
  @BuiltValueField(wireName: r'outletId')
  String get outletId;

  /// The outlet's factuality grade (A best, F worst)
  @BuiltValueField(wireName: r'factuality')
  String get factuality;

  /// Consensus partisan lean bucket (e.g. left / center / right), or null when unrated
  @BuiltValueField(wireName: r'lean')
  String? get lean;

  /// Whether the outlet is state media
  @BuiltValueField(wireName: r'stateAffiliated')
  bool get stateAffiliated;

  ClaimReputation._();

  factory ClaimReputation([void updates(ClaimReputationBuilder b)]) =
      _$ClaimReputation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimReputationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimReputation> get serializer =>
      _$ClaimReputationSerializer();
}

class _$ClaimReputationSerializer
    implements PrimitiveSerializer<ClaimReputation> {
  @override
  final Iterable<Type> types = const [ClaimReputation, _$ClaimReputation];

  @override
  final String wireName = r'ClaimReputation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimReputation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'outletId';
    yield serializers.serialize(
      object.outletId,
      specifiedType: const FullType(String),
    );
    yield r'factuality';
    yield serializers.serialize(
      object.factuality,
      specifiedType: const FullType(String),
    );
    if (object.lean != null) {
      yield r'lean';
      yield serializers.serialize(
        object.lean,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'stateAffiliated';
    yield serializers.serialize(
      object.stateAffiliated,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ClaimReputation object, {
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
    required ClaimReputationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'outletId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.outletId = valueDes;
          break;
        case r'factuality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.factuality = valueDes;
          break;
        case r'lean':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lean = valueDes;
          break;
        case r'stateAffiliated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.stateAffiliated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClaimReputation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimReputationBuilder();
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
