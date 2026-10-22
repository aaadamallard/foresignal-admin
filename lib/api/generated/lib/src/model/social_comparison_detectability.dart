//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_comparison_detectability.g.dart';

/// canSeeAbsence for the claim's family, place and window
///
/// Properties:
/// * [p]
/// * [lo]
/// * [hi]
/// * [methods]
/// * [ok]
/// * [reason]
@BuiltValue()
abstract class SocialComparisonDetectability
    implements
        Built<
          SocialComparisonDetectability,
          SocialComparisonDetectabilityBuilder
        > {
  @BuiltValueField(wireName: r'p')
  num get p;

  @BuiltValueField(wireName: r'lo')
  num get lo;

  @BuiltValueField(wireName: r'hi')
  num get hi;

  @BuiltValueField(wireName: r'methods')
  BuiltList<String> get methods;

  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  SocialComparisonDetectability._();

  factory SocialComparisonDetectability([
    void updates(SocialComparisonDetectabilityBuilder b),
  ]) = _$SocialComparisonDetectability;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialComparisonDetectabilityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialComparisonDetectability> get serializer =>
      _$SocialComparisonDetectabilitySerializer();
}

class _$SocialComparisonDetectabilitySerializer
    implements PrimitiveSerializer<SocialComparisonDetectability> {
  @override
  final Iterable<Type> types = const [
    SocialComparisonDetectability,
    _$SocialComparisonDetectability,
  ];

  @override
  final String wireName = r'SocialComparisonDetectability';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialComparisonDetectability object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'p';
    yield serializers.serialize(object.p, specifiedType: const FullType(num));
    yield r'lo';
    yield serializers.serialize(object.lo, specifiedType: const FullType(num));
    yield r'hi';
    yield serializers.serialize(object.hi, specifiedType: const FullType(num));
    yield r'methods';
    yield serializers.serialize(
      object.methods,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'ok';
    yield serializers.serialize(object.ok, specifiedType: const FullType(bool));
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialComparisonDetectability object, {
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
    required SocialComparisonDetectabilityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'p':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.p = valueDes;
          break;
        case r'lo':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lo = valueDes;
          break;
        case r'hi':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.hi = valueDes;
          break;
        case r'methods':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.methods.replace(valueDes);
          break;
        case r'ok':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.ok = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialComparisonDetectability deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialComparisonDetectabilityBuilder();
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
