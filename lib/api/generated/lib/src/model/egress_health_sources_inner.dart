//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'egress_health_sources_inner.g.dart';

/// EgressHealthSourcesInner
///
/// Properties:
/// * [sourceId]
/// * [backoffUntil]
/// * [consecutiveThrottles]
@BuiltValue()
abstract class EgressHealthSourcesInner
    implements
        Built<EgressHealthSourcesInner, EgressHealthSourcesInnerBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'backoffUntil')
  DateTime get backoffUntil;

  @BuiltValueField(wireName: r'consecutiveThrottles')
  int get consecutiveThrottles;

  EgressHealthSourcesInner._();

  factory EgressHealthSourcesInner([
    void updates(EgressHealthSourcesInnerBuilder b),
  ]) = _$EgressHealthSourcesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EgressHealthSourcesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EgressHealthSourcesInner> get serializer =>
      _$EgressHealthSourcesInnerSerializer();
}

class _$EgressHealthSourcesInnerSerializer
    implements PrimitiveSerializer<EgressHealthSourcesInner> {
  @override
  final Iterable<Type> types = const [
    EgressHealthSourcesInner,
    _$EgressHealthSourcesInner,
  ];

  @override
  final String wireName = r'EgressHealthSourcesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EgressHealthSourcesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'backoffUntil';
    yield serializers.serialize(
      object.backoffUntil,
      specifiedType: const FullType(DateTime),
    );
    yield r'consecutiveThrottles';
    yield serializers.serialize(
      object.consecutiveThrottles,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EgressHealthSourcesInner object, {
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
    required EgressHealthSourcesInnerBuilder result,
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
        case r'backoffUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.backoffUntil = valueDes;
          break;
        case r'consecutiveThrottles':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.consecutiveThrottles = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EgressHealthSourcesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EgressHealthSourcesInnerBuilder();
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
