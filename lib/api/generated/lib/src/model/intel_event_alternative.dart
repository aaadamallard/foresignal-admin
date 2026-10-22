//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_alternative.g.dart';

/// An alternative explanation (speculation), e.g. a receiver coverage gap or weather
///
/// Properties:
/// * [hypothesis]
/// * [basis]
/// * [supportingMemberIds]
@BuiltValue()
abstract class IntelEventAlternative
    implements Built<IntelEventAlternative, IntelEventAlternativeBuilder> {
  @BuiltValueField(wireName: r'hypothesis')
  String get hypothesis;

  @BuiltValueField(wireName: r'basis')
  String get basis;

  @BuiltValueField(wireName: r'supportingMemberIds')
  BuiltList<String>? get supportingMemberIds;

  IntelEventAlternative._();

  factory IntelEventAlternative([
    void updates(IntelEventAlternativeBuilder b),
  ]) = _$IntelEventAlternative;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventAlternativeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventAlternative> get serializer =>
      _$IntelEventAlternativeSerializer();
}

class _$IntelEventAlternativeSerializer
    implements PrimitiveSerializer<IntelEventAlternative> {
  @override
  final Iterable<Type> types = const [
    IntelEventAlternative,
    _$IntelEventAlternative,
  ];

  @override
  final String wireName = r'IntelEventAlternative';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventAlternative object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hypothesis';
    yield serializers.serialize(
      object.hypothesis,
      specifiedType: const FullType(String),
    );
    yield r'basis';
    yield serializers.serialize(
      object.basis,
      specifiedType: const FullType(String),
    );
    if (object.supportingMemberIds != null) {
      yield r'supportingMemberIds';
      yield serializers.serialize(
        object.supportingMemberIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelEventAlternative object, {
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
    required IntelEventAlternativeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hypothesis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.hypothesis = valueDes;
          break;
        case r'basis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.basis = valueDes;
          break;
        case r'supportingMemberIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.supportingMemberIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelEventAlternative deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventAlternativeBuilder();
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
