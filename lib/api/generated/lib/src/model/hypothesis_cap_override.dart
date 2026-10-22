//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_cap_override.g.dart';

/// Logged operator override of the cap
///
/// Properties:
/// * [by]
/// * [at]
/// * [rationale]
@BuiltValue()
abstract class HypothesisCapOverride
    implements Built<HypothesisCapOverride, HypothesisCapOverrideBuilder> {
  @BuiltValueField(wireName: r'by')
  String get by;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'rationale')
  String get rationale;

  HypothesisCapOverride._();

  factory HypothesisCapOverride(
      [void updates(HypothesisCapOverrideBuilder b)]) = _$HypothesisCapOverride;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisCapOverrideBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisCapOverride> get serializer =>
      _$HypothesisCapOverrideSerializer();
}

class _$HypothesisCapOverrideSerializer
    implements PrimitiveSerializer<HypothesisCapOverride> {
  @override
  final Iterable<Type> types = const [
    HypothesisCapOverride,
    _$HypothesisCapOverride
  ];

  @override
  final String wireName = r'HypothesisCapOverride';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisCapOverride object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'by';
    yield serializers.serialize(
      object.by,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'rationale';
    yield serializers.serialize(
      object.rationale,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisCapOverride object, {
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
    required HypothesisCapOverrideBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.by = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        case r'rationale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rationale = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisCapOverride deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisCapOverrideBuilder();
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
